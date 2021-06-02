module MEM_WB (clk, wb, addervv, resALUe, resALUve, memData, dest, 
					wb_out, addervv_out, resALUe_out, resALUve_out, dest_out, memData_out);
					
	input logic clk;
	input logic [1:0] wb;
	input logic [191:0] addervv;
	input logic [20:0] resALUe;
	input logic [191:0] resALUve;
	input logic [191:0] memData;
	input logic [2:0] dest;
	
	output logic [1:0] wb_out;
	output logic [191:0] addervv_out;
	output logic [20:0] resALUe_out;
	output logic [191:0] resALUve_out;
	output logic [191:0] memData_out;
	output logic [2:0] dest_out;
	
	always @(negedge clk) begin
		wb_out <= wb;
		addervv_out <= addervv;
		resALUe_out <= resALUe;
		resALUve_out <= resALUve;
		memData_out <= memData;
		dest_out <= dest;
	end
endmodule 