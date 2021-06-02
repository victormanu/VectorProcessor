module VectorProcessor(clk, pc, 
					wb_outm, addervv_outm, resALUe_outm, resALUve_outm, dest_outm, memData_outm);
	input logic clk;
	input logic [19:0] pc;
	//**** Fetch
	logic [19:0] instr;
	logic [19:0] drPC_plus;
	// Pipe Fetch - Decode
	logic [19:0] instr_out; 
	logic [19:0] drPC_plus_out;
	
	//**** Decode 
	logic [20:0] r1e;
	logic [20:0] r2e;
	logic [191:0] r1v;
	logic [191:0] r2v;
	logic [20:0] immALU;
	logic [4:0] exec;
	logic [3:0] mem;
	logic [1:0] wb;
	logic [3:0] dest;
	logic destType_out;
	
	// Pipe ID - EXEC
	logic [4:0] exc_out;
	logic [3:0] mem_out;
	logic [1:0] wb_out; 
	logic [20:0] r1e_out;
	logic [20:0] r2e_out;
	logic [191:0] r1v_out;
	logic [191:0] r2v_out;
	logic [20:0] imm_out;
	logic [3:0] dest_out;
	logic destType_out_idex;
	
	//**** Exec
	logic [20:0] resALUe;
	logic [191:0] resALUve;
	logic [191:0] resSum;
	
	// Pipe EXEC - Mem
	logic [4:0] mem_oute;
	logic [1:0] wb_oute;
	logic [20:0] r1e_oute;
	logic [20:0] r2e_oute;
	logic [191:0] r1v_oute;
	logic [191:0] r2v_oute;
	logic [20:0] resALUe_oute;
	logic [191:0] resALUve_oute;
	logic [191:0] resSum_oute;
	logic [3:0] dest_oute;
	
	//**** Exec
	logic [191:0] data_out;
	
	// Pipe EXEC - MEM
	output logic [1:0] wb_outm;
	output logic [191:0] addervv_outm;
	input logic [20:0] resALUe_outm;
	input logic [191:0] resALUve_outm;
	input logic [191:0] memData_outm;
	input logic [2:0] dest_outm;
	
	
	Fetch_Stage fs(clk, pc, instr, drPC_plus);
	IF_ID pipeIFID(clk, instr, drPC_plus, drPC_plus_out, instr_out);
	Decode_Stage decS(clk, instr_out, immALU, exec, mem, wb, r1e, r2e, r1v, r2v, dest, destType_out);
	
	ID_EX pipeIdex(clk, exec, mem, wb, r1e, r2e, r1v, r2v, immALU, dest, destType_out,
			exc_out, mem_out, wb_out, r1e_out, r2e_out, r1v_out, r2v_out, imm_out, dest_out, destType_out_idex);
	EXEC_Stage execS(clk, exec, r1e_out, r2e_out, r1v_out, r2v_out, imm_out, resALUe, resALUve, resSum);
	
	EX_MEM pipeExecMem(clk, mem_out, wb_out, r1e_out, r2e_out, r1v_out, r2v_out, resALUe, resALUve, resSum, dest, 
					mem_oute, wb_oute, r1e_oute, r2e_oute, r1v_oute, r2v_oute, resALUe_oute, 
					resALUve_oute, resSum_oute, dest_oute);
	
	MEM_Stage memS(clk, r2e_oute, r1v_oute, mem_oute,  data_out);
	
	MEM_WB pipeMemwb(clk, wb_oute, resSum_oute, resALUe_oute, resALUve_oute, data_out, dest_oute, 
					wb_outm, addervv_outm, resALUe_outm, resALUve_outm, dest_outm, memData_outm);
	
endmodule 