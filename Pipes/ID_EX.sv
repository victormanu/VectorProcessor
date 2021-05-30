module ID_EX(clk, exc, mem, wb, r1e, r2e, r1v, r2v, imm, dest, desType,
						exc_out, mem_out, wb_out, r1e_out, r2e_out, r1v_out, r2v_out, imm_out, dest_out, destType_out);
	input logic clk;
	input logic [4:0] exc;
	input logic [3:0] mem;
	input logic [1:0] wb;
	input logic [20:0] r1e;
	input logic [20:0] r2e;
	input logic [191:0] r1v;
	input logic [191:0] r2v;
	input logic [20:0] imm;
	input logic [3:0] dest;
	input logic desType;
	
	output logic [4:0] exc_out;
	output logic [3:0] mem_out;
	output logic [1:0] wb_out; 
	output logic [20:0] r1e_out;
	output logic [20:0] r2e_out;
	output logic [191:0] r1v_out;
	output logic [191:0] r2v_out;
	output logic [20:0] imm_out;
	output logic [3:0] dest_out;
	output logic destType_out;
	
	always @(negedge clk) begin
		exc_out <= exc;
		mem_out <= mem;
		wb_out <= wb;
		r1e_out <= r1e;
		r2e_out <= r2e;
		r1v_out <= r1v;
		r2v_out <= r2v;
		imm_out <= imm;
		dest_out <= dest;
		destType_out <= desType;
	end
endmodule 