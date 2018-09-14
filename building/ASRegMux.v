module ASRegMux (in1, in2, clock, write1, write2, writeA, writeG, sigG, sigDIN, ctrlMux, ctrlULA);
    
    input [15:0] in1, in2;
    input clock, write1, write2, writeA, writeG, sigG, sigDIN;
    input [7:0] ctrlMux;
    input [2:0] ctrlULA;
    
    wire [15:0] out1, out2, outMux, outA, outG, outULA;
    
    reg aux = 16'b0;
    
    reg16bitsP reg1(in1, out1, write1, clock);
    reg16bitsP reg2(in2, out2, write2, clock);
    multiplexador mux1(aux, out1, out2, aux, aux, aux, aux, aux, aux, outG, ctrlMux, sigG, sigDIN, outMux);
    reg16bitsP A(outMux, outA, writeA, clock);
    addsub as(outA, outMux, ctrlULA, outULA);
    reg16bitsN G(outULA, outG, writeG, clock);
    
endmodule
