module Mem_tb ();

	logic clk;
	logic [20:0] dirMem; 
	logic [191:0] data;
	logic [3:0] mem;
	logic [191:0] resALUve;
	logic [191:0] resSum;
	
	logic [191:0] data_out;
	logic [191:0] mux_out;
	
	MEM_Stage DUT(clk, dirMem, data, mem, resALUve, resSum, data_out, mux_out);
	
	initial begin
		#10;					// LOAD
		dirMem = 0;
		data = 2;
		mem = 4'b1000; 
		#10;					// STORE
		dirMem = 3;
		data = 192'h90aafe1706fe1700fe1704fe1703fe1745fe1764fe554433;
		mem = 4'b1001;
		#10;
	end
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk;
		#10;
	end
endmodule 