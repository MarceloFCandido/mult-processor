module ASreg(in1, in2, clock, write1, write2, write3, write4, ctrl, out4);
    
    input [15:0] in1, in2;
    input clock, write1, write2, write3, write4;
    input [2:0] ctrl;
    output [15:0] out4;
    
    wire [15:0] in3, out1, out2, out3;
    
    reg16bitsP reg1(in1, out1, write1, clock);
    reg16bitsP reg2(in2, out2, write2, clock);
    addsub as(out1, out2, ctrl, in3);
    reg16bitsN reg3(in3, out3, write3, clock);
    reg16bitsP reg4(out3, out4, write4, clock);
    
endmodule