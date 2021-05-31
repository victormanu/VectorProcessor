module EXEC_Stage (clk, exc, r1e, r2e, r1v, r2v, imm, resALUe, resALUve, resSum);

	input logic clk;
	input logic [4:0] exc; 
	input logic [20:0] r1e;
	input logic [20:0] r2e;
	input logic [191:0] r1v;
	input logic [191:0] r2v;
	input logic [20:0] imm;
	
	output logic [20:0] resALUe;
	output logic [191:0] resALUve;
	output logic [191:0] resSum;
	
	logic [20:0] muxAlu;
	logic [2:0] operAlu;
	logic [4:0] aluCrtl;
	logic aluSrc;
	
	logic flagALUe;
	logic flagALUve;
	logic flagSum;
	
	assign aluCrtl = exc;
	assign aluSrc = exc[0];
	
	ALU_Control controlALU (aluCrtl, operAlu, flagALUe, flagALUve, flagSum);
	MUX_ALU exMux (r2e, imm, aluSrc, muxAlu);
	ALU aluE(r1e, muxAlu, operAlu, flagALUe, resALUe);
	ALU_VE aluve(r1e, muxAlu, operAlu, flagALUve, resALUve);
	ADDER_VV addVV(r1v, r2v, operAlu, flagSum, resSum);
endmodule 