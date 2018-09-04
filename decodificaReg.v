module decodificaReg(W,En,Y);
	input [2:0]W;
	input En;
	output reg [7:0]Y;
	
	always@(W or En)	begin
		if(En == 1)
			case(W)
				3'b000: Y = 8'b00000001;	//Reg0
				3'b001: Y = 8'b00000010;	//Reg1
				3'b010: Y = 8'b00000100;	//Reg2
				3'b011: Y = 8'b00001000;	//Reg3
				3'b100: Y = 8'b00010000;	//Reg4
				3'b101: Y = 8'b00100000;	//Reg5
				3'b110: Y = 8'b01000000;	//Reg6
				3'b111: Y = 8'b10000000;	//Reg7				
			endcase
		else 
			Y = 8'b00000000;
	end
endmodule
		