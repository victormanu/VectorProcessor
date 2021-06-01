module ALU_VE (op1, op2, flag, funct, result);
	
	input logic flag;
	input logic [191: 0] op1;
	input logic [20: 0] op2;
	input logic [2: 0] funct;
	
	output logic [191:0] result = '{default:192'b0};
	
	always @(*) begin
		case(flag)
			1'b0: ;
			1'b1: begin 
				case(funct)
					3'b001: begin
						result[7:0] = op2;
						result[15:8] = op2;	
						result[23:16] = op2;
						result[31:24] = op2;
						result[39:32] = op2;
						result[47:33] = op2;
						result[55:48] = op2;
						result[63:56] = op2;
						result[71:64] = op2;
						result[79:72] = op2;
						result[87:80] = op2;
						result[95:88] = op2;
						result[103:96] = op2;
						result[111:104] = op2;
						result[119:112] = op2;
						result[127:120] = op2;
						result[135:128] = op2;
						result[143:136] = op2;
						result[151:144] = op2;
						result[159:152] = op2;
						result[167:160] = op2;
						result[175:168] = op2;
						result[183:176] = op2;
						result[191:184] = op2;
					end
					3'b100: begin
						result[7:0] = op1[7:0] * op2;
						result[15:8] = op1[15:8] * op2;	
						result[23:16] = op1[23:16] * op2;
						result[31:24] = op1[31:24] * op2;
						result[39:32] = op1[39:32] * op2;
						result[47:33] = op1[47:33] * op2;
						result[55:48] = op1[55:48] * op2;
						result[63:56] = op1[63:56] * op2;
						result[71:64] = op1[71:64] * op2;
						result[79:72] = op1[79:72] * op2;
						result[87:80] = op1[87:80] * op2;
						result[95:88] = op1[95:88] * op2;
						result[103:96] = op1[103:96] * op2;
						result[111:104] = op1[111:104] * op2;
						result[119:112] = op1[119:112] * op2;
						result[127:120] = op1[127:120] * op2;
						result[135:128] = op1[135:128] * op2;
						result[143:136] = op1[143:136] * op2;
						result[151:144] = op1[151:144] * op2;
						result[159:152] = op1[159:152] * op2;
						result[167:160] = op1[167:160] * op2;
						result[175:168] = op1[175:168] * op2;
						result[183:176] = op1[183:176] * op2;
						result[191:184] = op1[191:184] * op2;
					end
					3'b110: begin
						result[7:0] = op1[7:0] / op2;
						result[15:8] = op1[15:8] / op2;	
						result[23:16] = op1[23:16] / op2;
						result[31:24] = op1[31:24] / op2;
						result[39:32] = op1[39:32] / op2;
						result[47:33] = op1[47:33] / op2;
						result[55:48] = op1[55:48] / op2;
						result[63:56] = op1[63:56] / op2;
						result[71:64] = op1[71:64] / op2;
						result[79:72] = op1[79:72] / op2;
						result[87:80] = op1[87:80] / op2;
						result[95:88] = op1[95:88] / op2;
						result[103:96] = op1[103:96] / op2;
						result[111:104] = op1[111:104] / op2;
						result[119:112] = op1[119:112] / op2;
						result[127:120] = op1[127:120] / op2;
						result[135:128] = op1[135:128] / op2;
						result[143:136] = op1[143:136] / op2;
						result[151:144] = op1[151:144] / op2;
						result[159:152] = op1[159:152] / op2;
						result[167:160] = op1[167:160] / op2;
						result[175:168] = op1[175:168] / op2;
						result[183:176] = op1[183:176] / op2;
						result[191:184] = op1[191:184] / op2;
					end
				endcase
			end
		endcase
	end
endmodule 