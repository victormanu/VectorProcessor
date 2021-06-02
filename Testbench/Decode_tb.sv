module Decode_tb ();

	logic clk;
	logic [19:0]instr;

	logic [20:0] r1e;
	logic [20:0] r2e;
	
	logic [191:0] r1v;
	logic [191:0] r2v;
	
	logic [20:0] immALU;
	logic [4:0] exec;
	logic [3:0] mem;
	logic [1:0] wb;
	logic [3:0] dest;
	logic destType_out;
	
	Decode_Stage DUT(clk, instr, immALU, exec, mem, wb, r1e, r2e, r1v, r2v, dest, destType_out);
	
	initial begin 
		instr = 20'h0D402;		// MOV Escalar Imm
		#10;
		instr = 20'h7D380;		// Mult Escalar Escalar
		#10;
		instr = 20'h4D380;		// Mult Vector Escalar
	end
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk;
		#10;
	end
endmodule 