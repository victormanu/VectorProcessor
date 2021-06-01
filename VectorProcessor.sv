module VectorProcessor(clk, pc, instr, drPC_plus);
	input logic clk;
	input logic [20:0] pc;
	//**** Fetch
	output logic [20:0] instr;
	output logic [20:0] drPC_plus;
	
	
	Fetch_Stage fs(clk, pc, instr, drPC_plus);
	
endmodule 