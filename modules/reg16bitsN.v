module reg16bitsN(in, out, write, clock);

	/***************************************************************************
	* Registrador de 16 bits sensivel a borda de descida do clock
	***************************************************************************/

	input [15:0] in;
	input write, clock;
	output reg [15:0] out;

	initial begin
       out = 16'b0;
	end

	always @(negedge clock)begin
		if (write) begin
			out = in;
		end
	end

endmodule
