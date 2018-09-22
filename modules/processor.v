module processor(DIN, resetN, clock, run, done, ADDR, DOUT, W);  //Modelsim

// module processor(DIN, resetN, clock, run, done, ADDR, DOUT, W, out0, out1,
                    // out2, out3, counterOut, pcOut,IRout); // Placa
    input [15:0] DIN;
    input resetN, clock, run;
    output reg done;
	output W;
    output [15:0] ADDR, DOUT;

	// output [15:0]out0, out1, out2, out3;		//PLACA
    // output [2:0]counterOut;
    // output [15:0]pcOut;
	// output [9:0] IRout;

    // Variaveis para o contador
    wire [2:0] counterOut;

	reg clear;

    // Variaveis para os registradores RZ
    wire [15:0] out0, out1, out2, out3, out4, out5, out6;
    reg write;

    // Variaveis para registradores de ciclo
    reg sigA, sigG;
    wire [15:0] outA, outG;

	 // Variaveis para os registradores do proc. incrementado
	 reg addrIn, dOutIn, W_D, incr_pc;
	 wire [15:0] pcOut; //REG 7

    // Variaveis para o IR
    reg IRin;
    wire [9:0] IRout;

    // Variaveis para o multiplexador
    reg decG, decDIN;

    // Variaveis para os decodificador
    wire [7:0] decout0, decout1;
    reg [7:0] decoutgen;

    // Variaveis para a ULA
    reg [2:0] ctrlULA;
    wire [15:0] outULA;

    // Variaveis para o processador
	wire [15:0] busWires;

    initial begin
        clear = 1'b1;
        write = 1'b0;
        sigA = 1'b0;
        sigG =  1'b0;
        IRin = 1'b0;
        decG = 1'b0;
        decDIN = 1'b0;
        ctrlULA = 3'b000;
        incr_pc = 1'b0;
        addrIn = 1'b0;
        decoutgen = 8'b00000000;
        done = 1'b0;
    end

    always @(counterOut, IRout) begin
        // Etapa 0
        if (run) begin
            case (counterOut)  // baseado nas etapas
                // Decodificando instrucao e colocando no IR - Primeiro pulso
                3'b000: begin
                    // Resetando sinais de controle
                    write = 1'b0;
                    sigA = 1'b0;
                    sigG =  1'b0;
                    decG = 1'b0;
                    decDIN = 1'b0;
                    ctrlULA = 3'b000;
                    clear = 1'b0;
                    incr_pc = 1'b1;
                    IRin = 1'b1;
                    addrIn = 1'b1;
                    done = 1'b0;
                    dOutIn = 1'b0;
                    W_D = 1'b0;
                end

                //Etapa 1
                3'b001: begin
                    incr_pc = 1'b0;
                    IRin = 1'b0;
                    case(IRout[3:0])
                        4'b1011: begin		// Load
                        end
                        4'b1010 :begin		// Store
                        end
                        default : begin
                            decoutgen = 8'b10000000;
                        end
                    endcase
                end

                //Etapa 2
                3'b010: begin
                    case (IRout[3:0])
                        4'b0111: begin // MVI
                            addrIn = 1'b0;
                            incr_pc = 1'b1;			 // Buscando o dado
                            decoutgen = 8'b00000000;
                        end
                        4'b1000:  begin   // MV
                            addrIn = 1'b0;
                            decoutgen = decout1; // Selecionando RY_{in} = 1
                            write = 1'b1;
                            done = 1'b1;
                            clear = 1'b1;
                        end
                        4'b1001: begin
                            addrIn = 1'b0;
                            // Se o resultado atual da ULA nao for zero
                            // faz o MV
                            if (outG != 16'b0000000000000000) begin
                                decoutgen = decout1;
                                write = 1'b1;
                            end
                            if (decout0 != 8'b10000000)begin
                                done = 1'b1;
                                clear = 1'b1;
                            end
                            else
                                addrIn = 1'b1;
                        end
                        4'b1011: begin		// Load
                            // Enviando o endereco que contem o dado desejado
                            // para o registrador de enderecos
                            decoutgen = decout1;
                        end
                        4'b1010 :begin		// Store
                        	// Enviando o endereco que sera gravado o dado
                            decoutgen = decout1;
                        end
                        default: begin // Operacoes que usam a ULA
                            addrIn = 1'b0;
                            decoutgen = decout0; // RX_{out} = 1;
                            sigA = 1'b1; // A_{in} = 1;
                        end
                    endcase
                end

                // Etapa 3
                3'b011: begin
                    addrIn = 1'b0;
                    case (IRout[3:0])
                        4'b0111: begin // MVI
                            incr_pc = 1'b0;
                            decoutgen = 8'b10000000;
                            addrIn = 1'b1;
                        end
                        4'b1011: begin		// Load
                            decoutgen = 8'b00000000; // Instantaneo nesse passo
                        end
                        4'b1010 :begin		//Store
                            decoutgen = decout0; //Instantaneo nesse passo
                            dOutIn = 1'b1;
                            W_D = 1'b1;
                        end
                        4'b1001: begin
                            addrIn = 1'b0;
                            done = 1'b1;
                            clear = 1'b1;
                        end
                        default: begin // Operacoes que usam a ULA
                            sigA = 1'b0; // A_{in} = 0;
                            decoutgen = decout1; // RY_{out} = 1;
                            sigG = 1'b1; // G_{in} = 1;
                            ctrlULA =  IRout[2:0]; // UlaOp
                        end
                    endcase
                end

                //Etapa 4
                3'b100: begin
                    case (IRout[3:0])
                        4'b0111: begin // MVI
                            incr_pc = 1'b0;
                            write = 1'b1;
                            decoutgen = 8'b00000000;
                            decDIN = 1'b1;
                            addrIn = 1'b0;
                            done = 1'b1;
                            // Porque aumentou o numero de ciclos
                            clear = 1'b1;
                        end

                        4'b1011: begin		// Load
                            decDIN = 1'b1;			// Instantaneo nesse passo
                            write = 1'b1;
                        end

                        4'b1010 :begin		// Store
                            decoutgen = 8'b10000000; // Instantaneo nesse passo
                            dOutIn = 1'b0;
                            W_D = 1'b0;
                            addrIn = 1'b1; // Instantaneo nesse passo
                        end

                        default: begin // Operacoes que usam a ULA
                            decoutgen = 8'b00000000; // RY_{out} = 0;
                            sigG = 1'b0; // G_{in} = 0;
                            ctrlULA = 3'b000;
                            write = 1'b1;
                            done = 1'b1;
                            decG = 1'b1;
                            clear = 1'b1;	//Pq aumentou o numero de ciclos
                        end
                    endcase
                end

                //Etapa 5
                3'b101: begin
                    case (IRout[3:0])
                        4'b1011: begin		// Load
                        decDIN = 1'b0;
                        write = 1'b0;
                        decoutgen = 8'b10000000;	// Instantaneo nesse passo
                        addrIn = 1'b1;				// Instantaneo nesse passo
                        done = 1'b1;
                        end

                        4'b1010 :begin		// Store
                            decoutgen = 8'b10000000; // Instantaneo nesse passo
                            dOutIn = 1'b0;
                            done = 1'b1;
                            addrIn = 1'b0;		// Instantaneo nesse passo
                            end
                    endcase

                end

            endcase
        end
    end

    counter c0(clock, resetN | clear, counterOut);

    reg16bitsP reg0(busWires, out0, write & decout0[0], clock);
    reg16bitsP reg1(busWires, out1, write & decout0[1], clock);
    reg16bitsP reg2(busWires, out2, write & decout0[2], clock);
    reg16bitsP reg3(busWires, out3, write & decout0[3], clock);
    reg16bitsP reg4(busWires, out4, write & decout0[4], clock);
    reg16bitsP reg5(busWires, out5, write & decout0[5], clock);
    reg16bitsP #(8) reg6(busWires, out6, write & decout0[6], clock);
    PC pgmCnt(busWires, pcOut, incr_pc, write & decout0[7], clock, resetN);

    reg16bitsP #(3) A(busWires, outA, sigA, clock);
    reg16bitsN G(outULA, outG, sigG, clock);

	// Devemos criar 3 novos registradores para
    reg16bitsP #(4) addressReg(busWires, ADDR, addrIn, clock);
    reg16bitsP dOutReg(busWires, DOUT, dOutIn, clock);
    regW writeReg(W, W_D, clock);

    IR ir0(DIN[9:0], IRout, IRin, clock);

    decodificaReg dec0(IRout[6:4], 1'b1, decout0);
    decodificaReg dec1(IRout[9:7], 1'b1, decout1);

    multiplexador mux0(DIN, out0, out1, out2, out3, out4, out5, out6, pcOut,
        outG, decoutgen, decG, decDIN, busWires);

    addsub as(outA, busWires, ctrlULA, outULA);

endmodule
