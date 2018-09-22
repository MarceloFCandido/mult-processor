
module ram_proc(input clock, resetN, run, 
					 output done);
	
	wire [15:0] ramQ, addr, din;
	wire w;
	
	lpmRAM ram(addr[5:0], clock, din, w, ramQ);
	processor proc(ramQ, resetN, clock, run, done, addr, din, w);
	
endmodule


// Tentativa de uso para a placa

//module disp7seg(binario, decodificacao);
//	parameter tamanho = 6;
//		
//	input [tamanho - 1:0] binario;
//	output reg [0:6] decodificacao;
//	
//	always @(binario) begin
//	case(binario) //					               abcdefg
//			8'b00000000: decodificacao = 7'b0000001; // 0
//			8'b00000001: decodificacao = 7'b1001111; // 1
//			8'b00000010: decodificacao = 7'b0010010; // 2
//			8'b00000011: decodificacao = 7'b0000110; // 3
//			8'b00000100: decodificacao = 7'b1001100; // 4
//			8'b00000101: decodificacao = 7'b0100100; // 5
//			8'b00000110: decodificacao = 7'b0100000; // 6
//			8'b00000111: decodificacao = 7'b0001101; // 7
//			8'b00001000: decodificacao = 7'b0000000; // 8
//			8'b00001001: decodificacao = 7'b0000100; // 9
//			8'b00001010: decodificacao = 7'b0001000; // A
//			8'b00001011: decodificacao = 7'b1100000; // b
//			8'b00001100: decodificacao = 7'b0110001; // C
//			8'b00001101: decodificacao = 7'b1000010; // d
//			8'b00001110: decodificacao = 7'b0110000; // E
//			8'b00001111: decodificacao = 7'b0111000; // F
//	endcase
//	end
//endmodule
//
//module counter_50(input CLK, clear, output reg [31:0] out);
//	
//	always @(posedge CLK, posedge clear) begin
//		if (clear) begin
//			out = 32'b0;
//		end else begin 
//			out = out + 1'b1;
//		end
//	end
//	
//endmodule


//module ram_proc(input [17:0] SW, input CLOCK_50,
//					 input [0:0]KEY,
//					 output [8:0]LEDG, output [17:0]LEDR,
//					 output [0:6] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7);
//
//	wire [15:0] ramQ, addr, din;
//	wire w, run, resetN;
//	wire [31:0] outCnt;
//	wire [15:0] out0, out1, out2, out3;
//	wire [9:0] IR;
//	wire [2:0] step;
//	wire [15:0]pc;
//	assign run = SW[0];
//	assign resetN = SW[1];
//	
//	wire clock;
//	
//   assign clock = ~KEY[0:0];
//	//assign LEDG[5:0] = addr[5:0];
//	assign LEDR[2:0] = step; 
//	
//	//counter_50 cnt(CLOCK_50, resetN, outCnt);
//	lpmRAM ram(addr[5:0], clock, din, w, ramQ);
//	processor proc(ramQ, resetN, clock, run, done, addr, din, w, out0, out1, out2, out3, step, pc ,IR);	//Placa
//	//processor proc(ramQ, resetN, clock, run, done, addr, din, w);		//Modelsim
//	
//	assign LEDR[17:8] = IR[9:0]; 
//	
//	assign LEDG[8:8] = done;
//	disp7seg #(4) dispOP(ramQ[3:0],HEX7);
//	
//	disp7seg #(3) dispX(ramQ[6:4],HEX5);
//	disp7seg #(3) dispY(ramQ[9:7],HEX4);
//	
//	disp7seg #(4) disppc(pc[3:0],HEX6);
//	
//	disp7seg #(4) disp0(out0[3:0],HEX3);
//	disp7seg #(4) disp1(out1[3:0],HEX2);
//   disp7seg #(4) disp2(out2[3:0],HEX1);
//   disp7seg #(4) disp3(out3[3:0],HEX0);
//	
//endmodule
