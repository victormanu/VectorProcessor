module Fetch_Stage (clk, pc_4, instr, pc_plus);
	input logic clk;
	input logic [20:0] pc_4;
	 
	output logic [20:0] instr;
	output logic [20:0] pc_plus;
	
	logic [20:0] pc;
	 
	PC_Register pcNext(clk, pc_4, pc);
	
	Fetch_Adder fAdder(4, pc, pc_plus);
	
	Instr_Mem instrMem(pc, instr);
endmodule 