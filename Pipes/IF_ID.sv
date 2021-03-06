module IF_ID (clk, instr, drPC_plus, drPC_plus_out, instr_out);
	input logic clk;
	input logic [19: 0] instr;
	input logic [19: 0] drPC_plus;
	
	output logic [19: 0] drPC_plus_out;
	output logic [19: 0] instr_out;
	
	always @(negedge clk) begin
		instr_out = instr;
		drPC_plus_out = drPC_plus;
	end
endmodule 