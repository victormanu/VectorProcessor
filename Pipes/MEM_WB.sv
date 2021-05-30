module MEM_WB (clk, wb, r2, resALU, memData, dest, 
					wb_out, r2_out, resALU_out, dest_out, memData_out);
					
	input logic clk;
	input logic [1:0] wb;
	input logic [31:0] r2;
	input logic [31:0] resALU;
	input logic [31:0] memData;
	input logic [3:0] dest;
	
	output logic [1:0] wb_out;
	output logic [31:0] r2_out;
	output logic [31:0] resALU_out;
	output logic [31:0] memData_out;
	output logic [3:0] dest_out;
	
	always @(negedge clk) begin
		wb_out <= wb;
		r2_out <= r2;
		resALU_out <= resALU;
		memData_out <= memData;
		dest_out <= dest;
	end
endmodule 