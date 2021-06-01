module MEM_Stage (clk, dirMem, data, mem,  data_out);
	input logic clk;
	input logic [20:0] dirMem; 
	input logic [191:0] data;
	input logic [3:0] mem;
	
	output logic [191:0] data_out;
	
	logic opType;
	logic [1:0] funct;
	logic [2:0] opCode;
	
	assign opCode = mem[2:0];
	assign funct = mem[3];

	
	always @(posedge clk) begin
		case(funct)
			1'b0: ;
			1'b1: begin
				case(opCode)
					3'b000: begin
						opType = 0; //Load
					end
					3'b001: begin
						opType = 1; // Store
					end
					default: ;
				endcase
			end
		endcase
	end
	
	Data_Mem dataMem(dirMem, data, opType, data_out);
	
	
endmodule 