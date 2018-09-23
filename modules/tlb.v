
module tlb(addr, physical_addr);
	
	input [15:0] addr;
	output reg [5:0] physical_addr;
	
	reg [7:0] tlb_valid;
	reg [15:0] tlb_lines[7:0];
	
	reg [2:0] cont;
	reg miss;
	
	initial begin
		cont = 3'b000;
		
		tlb_valid = 6'b0;
		
		tlb_lines[0] = 15'b0;
		tlb_lines[1] = 15'b0;
		tlb_lines[2] = 15'b0;
		tlb_lines[3] = 15'b0;
		tlb_lines[4] = 15'b0;
		tlb_lines[5] = 15'b0;
		tlb_lines[6] = 15'b0;
		tlb_lines[7] = 15'b0;
	end
	
	always @(addr) begin
		
		case (addr)
			tlb_lines[0]: begin if (tlb_valid[0]) physical_addr[5:0] = tlb_lines[0][5:0]; else miss = 1'b1; end
			tlb_lines[1]: begin if (tlb_valid[1]) physical_addr[5:0] = tlb_lines[1][5:0]; else miss = 1'b1; end
			tlb_lines[2]: begin if (tlb_valid[2]) physical_addr[5:0] = tlb_lines[2][5:0]; else miss = 1'b1; end
			tlb_lines[3]: begin if (tlb_valid[3]) physical_addr[5:0] = tlb_lines[3][5:0]; else miss = 1'b1; end
			tlb_lines[4]: begin if (tlb_valid[4]) physical_addr[5:0] = tlb_lines[4][5:0]; else miss = 1'b1; end
			tlb_lines[5]: begin if (tlb_valid[5]) physical_addr[5:0] = tlb_lines[5][5:0]; else miss = 1'b1; end
			tlb_lines[6]: begin if (tlb_valid[6]) physical_addr[5:0] = tlb_lines[6][5:0]; else miss = 1'b1; end
			tlb_lines[7]: begin if (tlb_valid[7]) physical_addr[5:0] = tlb_lines[7][5:0]; else miss = 1'b1; end
			default: miss = 1'b1;
		endcase
		
		if (miss) begin
			tlb_lines[cont] = addr;
			tlb_valid[cont] = 1'b1;
			physical_addr[5:0] = tlb_lines[cont][5:0];
			cont = cont + 1'b1;
		end
		
	end
	
endmodule
