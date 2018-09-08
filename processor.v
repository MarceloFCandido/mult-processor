module processor(DIN, resetN, clock, run, done, busWires);
  
    input [15:0] DIN;
    input resetN, clock, run;
    output done;
    output [15:0] busWires;
  
    // Variaveis para o contador
    wire [1:0] counterOut;
    
    // Variaveis para os registradores RZ
    wire [15:0] out0, out1, out2, out3, out4, out5, out6, out7;
    reg write;
    
    // Variaveis para registradores de ciclo
    reg sigA, sigG;
    wire [15:0] outA, outG;
    
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
    reg [2:0] Xreg, Yreg;
     
//    always @() begin
//      
//    end
    
    counter c0(clock, resetN, counterOut);
    
    reg16bitsP reg0(busWires, out0, write & decout0[0], clock);
    reg16bitsP reg1(busWires, out1, write & decout0[1], clock);
    reg16bitsP reg2(busWires, out2, write & decout0[2], clock);
    reg16bitsP reg3(busWires, out3, write & decout0[3], clock);
    reg16bitsP reg4(busWires, out4, write & decout0[4], clock);
    reg16bitsP reg5(busWires, out5, write & decout0[5], clock);
    reg16bitsP reg6(busWires, out6, write & decout0[6], clock);
    reg16bitsP reg7(busWires, out7, write & decout0[7], clock);
    
    reg16bitsP A(busWires, outA, sigA, clock);
    reg16bitsN G(outULA, outG, sigG, clock);
    
    IR ir0(DIN[9:0], IRout, IRin, clock);
    
    decodificaReg dec0(Xreg, 1'b1, decout0);
    decodificaReg dec1(Yreg, 1'b1, decout1);
    
    multiplexador mux0(DIN, out0, out1, out2, out3, out4, out5, out6, out7, outG, decoutgen, decG, decDIN, busWires);
    
    addsub as(outA, busWires, ctrlULA, outULA);
    
endmodule
