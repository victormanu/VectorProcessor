module ALU (op1, op2, flag, funct, result);
	
	input logic flag;
	input logic [20: 0] op1;
	input logic [20: 0] op2;
	input logic [2: 0] funct;
	
	output logic [20: 0] result;
	
	always @(*) begin
		case(flag)
			1'b0: ;
			1'b1: begin
				case(funct)
					3'b000: // Move
						result = op2;
					3'b010: // Addition
						result = op1 + op2;
					3'b011: // Substraction			
						result = op1 - op2;
					3'b111: // Substraction			
						result = op1 * op2;			
					default: ;
				endcase
			end
		endcase
	end 
endmodule 