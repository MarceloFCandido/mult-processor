module counter (CLK, CLR, out);

    /***************************************************************************
    * Contador que registra a etapa da instrucao atual.
    ***************************************************************************/

    parameter L_COUNT = 3;
    parameter STOP = 6;

    input CLK, CLR;
    output reg [L_COUNT - 1:0] out;

    initial begin
        out = 3'b000;
    end

    always @(posedge CLK) begin
        if (CLR || out == STOP) begin
            out = 3'b000;
        end else begin
            out = out + 3'b001;
        end
    end

endmodule
