module IR(in,out,write,clock);

	input [9:0]in;
	input write, clock;
	output reg [9:0]out;
	
	always @(posedge clock)begin
		if(write)begin 
			out <= in;		
		end
		
		else begin
			out <= out;
		end
	end
endmodule
