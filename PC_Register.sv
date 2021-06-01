module PC_Register (clk, pc_n, pc);
	input logic clk;
	input logic [20:0] pc_n;
	output logic [20:0] pc;

	always @(posedge clk) begin
		pc <= pc_n; 
	end
endmodule 