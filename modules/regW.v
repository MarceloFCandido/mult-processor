module regW(out, write, clock);
	input write, clock;
	output reg out;
	
	always @(posedge clock)begin
		out = write;
	end
	
endmodule
