module counter (CLK, CLR, out);
  
    parameter L_COUNT = 2;
    parameter STOP = 2;
    
    input CLK, CLR;
    output reg [L_COUNT - 1:0] out;
    
    initial begin
        out = 3'b000;
    end
    
    always @(posedge CLK, posedge CLR) begin
        if (CLR || out == STOP) begin
            out = 3'b000;
        end else begin
            out = out + 3'b001;
        end
    end
    
endmodule