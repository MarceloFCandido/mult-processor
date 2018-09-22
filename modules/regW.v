module regW(out, write, clock);

	/***************************************************************************
	* Registrador de escrita, ou seja, responsavel por auxiliar o processador
	* quando este deseja escrever na memoria, proporcionando a habilitacao do
	* sinal de escrita da mesma
	***************************************************************************/

	input write, clock;
	output reg out;

	always @(posedge clock) begin
		out = write;
	end

endmodule
