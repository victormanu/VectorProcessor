module EX_MEM (clk, mem, wb, r1, r2, resALU, NZCV, branchDir, dest, 
					mem_out, wb_out, r1_out, r2_out, resALU_out, NZCV_out, branchDir_out, dest_out);
					
	input logic clk;
	input logic [4:0] mem;
	input logic [1:0] wb;
	input logic [31:0] r1;
	input logic [31:0] r2;
	input logic [31:0] resALU;
	input logic [3:0] NZCV;
	input logic [26:0] branchDir;
	input logic [3:0] dest;
	
	output logic [4:0] mem_out;
	output logic [1:0] wb_out;
	output logic [31:0] r1_out;
	output logic [31:0] r2_out;
	output logic [31:0] resALU_out;
	output logic [3:0] NZCV_out;
	output logic [26:0] branchDir_out;
	output logic [3:0] dest_out;
	
	always @(negedge clk) begin
		mem_out <= mem;
		wb_out <= wb;
		r1_out <= r1;
		r2_out <= r2;
		resALU_out <= resALU;
		NZCV_out <= NZCV;
		branchDir_out <= branchDir;
		dest_out <= dest;
	end
endmodule 