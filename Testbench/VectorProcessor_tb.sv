module VectorProcessor_tb ();

	logic clk;
	//logic [31:0] firstInstr;
	
	/*logic [31:0] r1, r2;
	logic [31:0] instr;
	logic [5:0] exec;
	logic [4:0] mem;
	logic [1:0] wb;
	logic [31:0] resALU;
	logic [3:0] dest_outWB;*/
	//logic [31:0] drInstr;
	logic [20:0] pc;
	logic [20:0] drPC_plus;
	logic [20:0] instr;
	
	VectorProcessor DUT(clk, pc, instr, drPC_plus);
	
	initial begin 
		pc = 0;
	end
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk;
		#10;
	end
endmodule