
module decodificaReg(W, En, Y);

	/***************************************************************************
	* Decodificador responsavel por receber o numero do registrador escolhido
	* pela instrucao e emitir um sinal que possibilite a selecao da saida deste
	* pelo multiplexador
	***************************************************************************/

	input [2:0] W;
	input En;
	output reg [7:0] Y;

	always @(W or En) begin
		if (En == 1)
			case(W)
				3'b000: Y = 8'b00000001;	// reg0
				3'b001: Y = 8'b00000010;	// reg1
				3'b010: Y = 8'b00000100;	// reg2
				3'b011: Y = 8'b00001000;	// reg3
				3'b100: Y = 8'b00010000;	// reg4
				3'b101: Y = 8'b00100000;	// reg5
				3'b110: Y = 8'b01000000;	// reg6
				3'b111: Y = 8'b10000000;	// reg7
			endcase
		else
			Y = 8'b00000000;
	end
endmodule
