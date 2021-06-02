module PC_Register (clk, pc_n, pc);
	input logic clk;
	input logic [19:0] pc_n;
	output logic [19:0] pc;

	always @(posedge clk) begin
		pc <= pc_n; 
	end
endmodule 