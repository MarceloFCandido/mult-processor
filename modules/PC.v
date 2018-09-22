module PC(in, out, incr_pc, load, clock, resetN);

    /***************************************************************************
    * Modulo que imita o Program Counter. Tendo um endereco inicial de quatro
    * (por decisao de projeto), incrementa sempre que incr_pc = 1 nas subidas de
    * clock. Caso load = 1, carrega a entrada. E volta ao início quando
    * resetN = 1. Claro que tudo isso com sensibilidade a subida do clock.
    ***************************************************************************/
    parameter ini = 4;
	input [15:0] in;
	input incr_pc, clock, load, resetN;
	output reg [15:0] out;

	initial begin
	    out = ini;
	end

	always @(negedge clock) begin
		if (resetN == 1'b0) begin
			if (incr_pc) begin
				out = out + 1;
			end else if (load) begin
				out = in;
			end
		end
	end

endmodule
