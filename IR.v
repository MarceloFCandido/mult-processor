module IR(in,out,write,clock);

	input [8:0]in;
	input write, clock;
	output reg [8:0]out;
	
	always @(posedge clock)begin
		if(write)begin 
			out <= in;		
		end
		
		else begin
			out <= out;
		end
	end
endmodule
