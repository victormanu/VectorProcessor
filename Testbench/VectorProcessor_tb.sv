module VectorProcessor_tb ();

	logic clk;
	logic [19:0] pc;
	
	logic [20:0] wbEscalar;
	logic [191:0] wbVector;
	
	VectorProcessor DUT(clk, pc, wbEscalar, wbVector);
	
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