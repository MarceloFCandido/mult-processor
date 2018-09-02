module addsub(op1, op2, ctrl, out);
    // Unidade logico-aritmetica
    // Capaz de realizar:
    // - Soma
    // - Subtracao
    // - Opera��o OR
    // - Opera��o AND
    // - Shift a direita
    // - Shift a esquerda
    // - Compara��o de menor (atraves da subtra��o)
    
    parameter L_DATA = 16;
    input [L_DATA - 1:0] op1, op2;
    input [2:0] ctrl;
    output [L_DATA - 1:0] out;
    
    always @() begin
        
    end
    
endmodule
