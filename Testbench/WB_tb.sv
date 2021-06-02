module WB_tb ();

	logic clk;
	logic [3:0] dest;
	logic destType;
	logic [191:0] memData;
	logic [20:0] regE;
	logic [191:0] regV;
	logic [1:0] wb;
	
	logic [20:0] wbEscalar;
	logic [191:0] wbVector;
	
	WB_Stage DUT(clk, dest, destType ,memData, regE, regV, wb, wbEscalar, wbVector);
	
	initial begin
		#10;									// Guardar resultado escalar
		dest = 3'b010;
		destType = 1'b0;
		memData = 5;
		regE = 10;
		regV = 1;
		wb = 2'b00;
		#10;									// Guardar resultado vectorial de EXEC
		dest = 3'b010;	
		destType = 1'b1;
		memData = 11;
		regE = 8;
		regV = 192'h90aafe1706fe1700fe1704fe1703fe1745fe1764fe17ACAC;
		wb = 2'b10;
		#10;									// Guardar resultado vectorial de MEM
		dest = 3'b101;
		destType = 1'b1;
		memData = 192'h90aafe1706fe1700fe1704fe1703fe1745fe1764fe17DDDD;
		regE = 7;
		regV = 6;
		wb = 2'b00;
		#10;
	end
	always begin
		clk = 1'b0;
		#10;
		clk = ~clk;
		#10;
	end
endmodule 