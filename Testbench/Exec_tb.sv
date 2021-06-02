module Exec_tb ();

	logic clk;
	logic [4:0] exc; 
	logic [20:0] r1e;
	logic [20:0] r2e;
	logic [191:0] r1v;
	logic [191:0] r2v;
	logic [20:0] imm;
	
	logic [20:0] resALUe;
	logic [191:0] resALUve;
	logic [191:0] resSum;
	
	EXEC_Stage DUT(clk, exc, r1e, r2e, r1v, r2v, imm, resALUe, resALUve, resSum);
	
	initial begin 
		exc = 5'b00001;		// MOV Escalar Imm
		r1e = 6;
		r2e = 3;
		r1v = 150;
		r2v = 300;
		imm = 10;
		#10;
		exc = 5'b01110;		// Mult Escalar Escalar
		r1e = 5;
		r2e = 3;
		r1v = 150;
		r2v = 300;
		imm = 0;
		#10;
		exc = 5'b00101;		// Suma Escalar Imm
		r1e = 5;
		r2e = 3;
		r1v = 150;
		r2v = 300;
		imm = 4;
		#10;	
		exc = 5'b00111;		// Resta Escalar Imm
		r1e = 5;
		r2e = 3;
		r1v = 150;
		r2v = 300;
		imm = 1;
		#10;
		exc = 5'b01010;		// Suma Vector Vector
		r1e = 5;
		r2e = 3;
		r1v = 150;
		r2v = 300;
		imm = 1;
		#10;
		exc = 5'b00010;		// Mov Vector Escalar
		r1e = 5;
		r2e = 3;
		r1v = 0;
		r2v = 300;
		imm = 1;
		#10;
		exc = 5'b01000;		// Mult Vector Escalar
		r1e = 1;
		r2e = 1;
		r1v = 1;
		r2v = 2;
		imm = 1; 
		#10;
		exc = 5'b01100;		// Div Vector Escalar
		r1e = 1;
		r2e = 1;
		r1v = 4;
		r2v = 2;
		imm = 1;
		#10;
		exc = 5'b11100;		// Load | Store
		r1e = 0;
		r2e = 0;
		r1v = 0; 
		r2v = 0;
		imm = 0;
		#10;
		
	end
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk;
		#10;
	end
endmodule