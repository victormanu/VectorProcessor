module MEM_Stage (clk, dirMem, data, NZCV, mem, selectFetch, data_out);
	input logic clk;
	input logic [3:0] NZCV;
	input logic [31:0] data;
	input logic [4:0] mem;
	input logic [31:0] dirMem;
	
	output logic [31:0] data_out;
	output logic selectFetch;
	
	logic zero;
	logic neg;
	logic selecBranch;
	logic [2:0] opCode;
	logic [1:0] funct;
	
	assign zero = NZCV[2];
	assign neg = NZCV[3];
	assign opCode = mem;
	assign funct = mem[4:3];
	
	always @(posedge clk) begin
	case(funct)
		2'b10:
			case(opCode)
				3'b000: 
					selecBranch = 1;
				3'b001: begin
					case(zero)
						1'b0:
							selecBranch = 0;
						1'b1:
							selecBranch = 1;
					endcase
				end
				3'b010: begin
					case(zero)
						1'b0:
							selecBranch = 1;
						1'b1:
							selecBranch = 0;
					endcase
				end
				3'b011: begin
					case(neg)
						1'b0:
							selecBranch = 0;
						1'b1:
							selecBranch = 1;
					endcase
				end
			endcase
		default:
			selecBranch = 0;
		endcase
		selectFetch = selecBranch;		
	end
	
	Data_Mem dataMem(dirMem, data, mem, data_out);
	
	
endmodule 