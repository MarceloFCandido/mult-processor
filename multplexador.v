module  multiplexador(Dado,reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,G,controlReg,Gout,Din,saida);
	
	input [15:0]reg0,reg1,reg2,reg3,reg4,reg5,reg6,reg7,Dado,G;
	input [7:0]controlReg;
	input	Gout;
	input	Din;
	output reg [15:0]saida;
	
	wire [9:0]controle;
	
	assign controle = {controlReg,Gout,Din};
	
	always @(controle) begin
		if(controle[9])	//Registradores
			saida = reg7;
			else
				if(controle[8])
					saida = reg6;
				else
					if(controle[7])
						saida = reg5;
					else
						if(controle[6])
							saida = reg4;
						else
							if(controle[5])
								saida = reg3;
							else
								if(controle[4])
									saida = reg2;
								else
									if(controle[3])
										saida = reg1;
									else
										if(controle[2])
											saida = reg0;
										else
											if(controle[1])//Gout
												saida = G;
										else 
											if(controle[0])//Din
												saida = 	Dado;
	
	end
	
	
endmodule
