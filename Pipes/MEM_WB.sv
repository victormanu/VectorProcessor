module MEM_WB (clk, wb, muxMem, resALUe, memData, dest, destType, 
					wb_out, muxMem_out, resALUe_out, dest_out, destType_out, memData_out);
					
	input logic clk;
	input logic [1:0] wb;
	input logic [191:0] muxMem;
	input logic [20:0] resALUe;
	input logic [191:0] memData;
	input logic [2:0] dest;
	input logic destType;
	
	output logic [1:0] wb_out;
	output logic [191:0] muxMem_out;
	output logic [20:0] resALUe_out;
	output logic [191:0] memData_out;
	output logic [2:0] dest_out;
	output logic destType_out;
	
	always @(negedge clk) begin
		wb_out <= wb;
		muxMem_out <= muxMem;
		resALUe_out <= resALUe;
		memData_out <= memData;
		dest_out <= dest;
		destType_out <= destType;
	end
endmodule 