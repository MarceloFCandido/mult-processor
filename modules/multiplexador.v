module  multiplexador(Dado, reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, G,
	controlReg, Gout, Din, saida);

	/***************************************************************************
	* Modulo multiplexador 10 para 1.
	***************************************************************************/

	input [15:0] reg0, reg1, reg2, reg3, reg4, reg5, reg6, reg7, Dado, G;
	input [7:0] controlReg;
	input Gout;
	input Din;
	output reg [15:0] saida;

	wire [9:0] controle;

	assign controle = {controlReg, Gout, Din};

	always @(controle, Dado, reg0,reg1, reg2, reg3, reg4, reg5, reg6, reg7, G)
	begin
		if(controle[9])	// reg 0
			saida = reg7;
		else
			if(controle[8])	// reg 1
				saida = reg6;
			else
				if(controle[7])	// reg 2
					saida = reg5;
				else
					if(controle[6])	// reg 3
						saida = reg4;
					else
						if(controle[5])	// reg 4
							saida = reg3;
						else
							if(controle[4])	// reg 5
								saida = reg2;
							else
								if(controle[3])	// reg 6
									saida = reg1;
								else
									if(controle[2])	// reg 7
										saida = reg0;
									else
										if(controle[1]) // Gout
											saida = G;
										else
											if(controle[0]) // Din
												saida = Dado;

	end


endmodule
