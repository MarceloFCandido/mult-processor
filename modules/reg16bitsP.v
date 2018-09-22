module reg16bitsP(in,out,write,clock);

	/************************************************
	* Registrador de 16 bits sensivel a borda de subi-
	* da do clock.
	*************************************************/

   parameter ini = 0;
	input [15:0] in;
	input write, clock;
	output reg [15:0] out;
	
	initial begin
	    out = ini;
	end
	
	always @(posedge clock)begin
		if(write)begin 
			out = in;		
		end
	end
	
endmodule
