module VectorProcessor_tb ();

	logic clk;
	logic [19:0] pc;
	
	logic [1:0] wb_outm;
	logic [191:0] addervv_outm;
	logic [20:0] resALUe_outm;
	logic [191:0] resALUve_outm;
	logic [191:0] memData_outm;
	logic [2:0] dest_outm;
	
	VectorProcessor DUT(clk, pc, 
					wb_outm, addervv_outm, resALUe_outm, resALUve_outm, dest_outm, memData_outm);
	
	initial begin 
		pc = 0;
	end
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk;
		#10;
		pc = pc + 1;
	end
endmodule 