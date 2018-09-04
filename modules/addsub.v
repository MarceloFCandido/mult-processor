module addsub(op1, op2, ctrl, out);
    // Unidade logico-aritmetica
    // Capaz de realizar:
    // - Soma
    // - Subtracao
    // - Operação OR
    // - Operação AND
    // - Shift a direita
    // - Shift a esquerda
    // - Comparação de menor (atraves da subtração)
    
    parameter L_DATA = 16;
    input [L_DATA - 1:0] op1, op2;
    input [2:0] ctrl;
    output reg [L_DATA - 1:0] out;
    
    always @(op1, op2, ctrl) begin
        case (ctrl) 
            3'b000: out = op1 + op2;
            3'b001: out = op1 - op2;
            3'b010: out = op1 | op2; // op1 OR op2
            3'b011: out = op1 & op2; // op1 AND op2
            3'b100: out = op1 << op2; // SLL op1, op2
            3'b101: out = op1 >> op2; // SLR op1, op2
            3'b110: out = (op1 < op2); // op1 < op2
        endcase
    end
    
endmodule
