module ALU (op1, op2, flag, funct, result);
	
	input logic flag;
	input logic [191: 0] op1;
	input logic [20: 0] op2;
	input logic [2: 0] funct;
	
	logic [23:0] pix1;
	logic [23:0] pix2;
	logic [23:0] pix3;
	logic [23:0] pix4;
	logic [23:0] pix5;
	logic [23:0] pix6;
	logic [23:0] pix7;
	logic [23:0] pix8;
	
	
	assign pix1 = op1[23:0];
	assign pix2 = op1[47:24];
	assign pix3 = op1[71:48];
	assign pix4 = op1[95:72];
	assign pix5 = op1[119:96];
	assign pix6 = op1[143:120];
	assign pix7 = op1[167:144];
	assign pix8 = op1[191:168];
	
	output logic [20: 0] result;
	
	always @(*) begin
		case(flag)
			1'b0: ;
			1'b1: begin
				case(funct)
					3'b000: // Move
						op_Result = op2;
					3'b010: // Addition
						op_Result = op1 + op2;
					3'b011: // Substraction			
						op_Result = op1 - op2;			
					default: ;
				endcase
			end
		endcase
	end 
endmodule 