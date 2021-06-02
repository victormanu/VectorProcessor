module Fetch_tb ();

	logic clk;
	logic [19:0] pc_4;
	 
	logic [19:0] instr;
	logic [19:0] pc_plus;
	
	Fetch_Stage DUT (clk, pc_4, instr, pc_plus);
	
	initial begin 
		pc_4 = 0;
	end
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk;
		#10;
		pc_4 = pc_plus;
	end
endmodule