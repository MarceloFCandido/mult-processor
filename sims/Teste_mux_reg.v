module Teste_Reg_Multiplex(DataIn,G,r0,r1,r2,r3,r4,r5,r6,r7,Bus,clock,write,Gout,Din);


        input [15:0]DataIn,G;
        input [15:0]r0,r1,r2,r3,r4,r5,r6,r7;
        input clock,write,Gout,Din;
        output [15:0]Bus;
        
        wire [15:0]r0_out,r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out;
        wire [9:0]IR;
        assign IR = DataIn[9:0];
        
        wire [7:0]X; 
        wire [7:0]Y; 
        
        decodificaReg x1(IR[6:4],1'b1,X);
        decodificaReg y1(IR[9:7],1'b1,Y);
        
        reg16bits R0(r0,r0_out,write,clock);
        reg16bits R1(r1,r1_out,write,clock);
        reg16bits R2(r2,r2_out,write,clock);
        reg16bits R3(r3,r3_out,write,clock);
        reg16bits R4(r4,r4_out,write,clock);
        reg16bits R5(r5,r5_out,write,clock);
        reg16bits R6(r6,r6_out,write,clock);
        reg16bits R7(r7,r7_out,write,clock);
        
        multiplexador mult1(DataIn,r0_out,r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,G,X,Gout,Din,Bus);
        //multiplexador mult2(DataIn,r0_out,r1_out,r2_out,r3_out,r4_out,r5_out,r6_out,r7_out,G,Y,Gout,Din,Bus);

        
        
endmodule
        
        
        
