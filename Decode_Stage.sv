module Decode_Stage (clk, instr, immALU, exec, mem, wb, r1e, r2e, r1v, r2v, dest, destType_out);
	input logic clk;
	input logic [20:0]instr;

	output logic [7:0] r1e;
	output logic [7:0] r2e;
	
	output logic [191:0] r1v;
	output logic [191:0] r2v;
	
	output logic [7:0] immALU;
	output logic [4:0] exec;
	output logic [3:0] mem;
	output logic [1:0] wb;
	output logic [3:0] dest;
	output logic destType_out;
	
	logic [7:0] imm;
	logic [3:0] oper1;
	logic [3:0] oper2; 
	logic [3:0] oper3;
	
	logic [20:0] imm21;
	logic [4:0] EX;
	logic [3:0] MEM;
	logic [1:0] WB;
	logic [1:0] regType;
	logic desType;	
	
	Control_Unit crtlUnit (instr, oper1, oper2, oper3, imm, EX, MEM, WB, regType, desType);
	extendZero zeroExt (imm, imm21);
	File_Register regBank (clk, oper2, oper3, oper1, 0, 0, 1'b1, 1'b0, regType, desType, r1e, r2e, r1v, r2v);
	always @(posedge clk) begin
		exec <= EX; 
		mem <= MEM;
		wb <= WB;
		immALU <= imm21;
		dest <= oper1;
		destType_out <= desType;
	end
endmodule 