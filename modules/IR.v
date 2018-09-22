module IR(in ,out, write, clock);

	/***************************************************************************
	* Registrador de instrucoes. Responsavel por guardar a instrucao atual no
	* interior do processador. 
	***************************************************************************/

	input [9:0] in;
	input write, clock;
	output reg [9:0] out;

	always @(posedge clock) begin
		if (write) begin
			out = in;
		end
	end
endmodule
