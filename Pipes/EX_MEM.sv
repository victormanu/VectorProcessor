module EX_MEM (clk, mem, wb, r1e, r2e, r1v, r2v, resALUe, resALUve, resSum, dest, 
					mem_out, wb_out, r1e_out, r2e_out, r1v_out, r2v_out, resALUe_out, 
					resALUve_out, resSum_out, dest_out);
					
	input logic clk;
	input logic [3:0] mem;
	input logic [1:0] wb;
	input logic [20:0] r1e;
	input logic [20:0] r2e;
	input logic [191:0] r1v;
	input logic [191:0] r2v;
	
	input logic [20:0] resALUe;
	input logic [191:0] resALUve;
	input logic [191:0] resSum;
	input logic [3:0] dest;
	
	output logic [4:0] mem_out;
	output logic [1:0] wb_out;
	output logic [20:0] r1e_out;
	output logic [20:0] r2e_out;
	output logic [191:0] r1v_out;
	output logic [191:0] r2v_out;
	output logic [20:0] resALUe_out;
	output logic [191:0] resALUve_out;
	output logic [191:0] resSum_out;
	output logic [3:0] dest_out;
	
	always @(negedge clk) begin
		mem_out <= mem;
		wb_out <= wb;
		r1e_out <= r1e;
		r2e_out <= r2e;
		r1v_out <= r1v;
		r2v_out <= r2v;
		resALUe_out <= resALUe;
		resALUve_out <= resALUve;
		resSum_out <= resSum;
		dest_out <= dest;
	end
endmodule 