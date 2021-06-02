module ADDER_VV (op1, op2, flag, result);
	
	input logic flag;
	input logic [191: 0] op1;
	input logic [191: 0] op2;
	
	output logic [191:0] result = '{default:192'b0};
	
	always @(*) begin
		case(flag)
			1'b0: ;
			1'b1: begin 
						result[7:0] = op1[7:0] + op2[7:0];
						result[15:8] = op1[15:8] + op2[15:8];	
						result[23:16] = op1[23:16] + op2[23:16];
						result[31:24] = op1[31:24] + op2[31:24];
						result[39:32] = op1[39:32] + op2[39:32];
						result[47:33] = op1[47:33] + op2[47:33];
						result[55:48] = op1[55:48] + op2[55:48];
						result[63:56] = op1[63:56] + op2[63:56];
						result[71:64] = op1[71:64] + op2[71:64];
						result[79:72] = op1[79:72] + op2[79:72];
						result[87:80] = op1[87:80] + op2[87:80];
						result[95:88] = op1[95:88] + op2[95:88];
						result[103:96] = op1[103:96] + op2[103:96];
						result[111:104] = op1[111:104] + op2[111:104];
						result[119:112] = op1[119:112] + op2[119:112];
						result[127:120] = op1[127:120] + op2[127:120];
						result[135:128] = op1[135:128] + op2[135:128];
						result[143:136] = op1[143:136] + op2[143:136];
						result[151:144] = op1[151:144] + op2[151:144];
						result[159:152] = op1[159:152] + op2[159:152];
						result[167:160] = op1[167:160] + op2[167:160];
						result[175:168] = op1[175:168] + op2[175:168];
						result[183:176] = op1[183:176] + op2[183:176];
						result[191:184] = op1[191:184] + op2[191:184];
			end
		endcase
	end
endmodule 