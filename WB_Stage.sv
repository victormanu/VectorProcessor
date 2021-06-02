module WB_Stage (clk, dest, destType ,memData, regE, regV, wb, wbEscalar, wbVector);
	input logic clk;
	input logic [3:0] dest;
	input logic destType;
	input logic [191:0] memData;
	input logic [20:0] regE;
	input logic [191:0] regV;
	input logic [1:0] wb;
	
	output logic [20:0] wbEscalar;
	output logic [191:0] wbVector;
	
	logic slc;
	logic [191:0] muxV;
	logic [20:0] r1e, r2e;
	logic [191:0] r1v, r2v;
	
	assign slc = wb[1];
	
	assign wbEscalar = regE;
	
	MUX_WB muxwbv(memData, regV, slc, muxV);
	assign wbVector = muxV;
	File_Register regBank (clk, 4'b0, 4'b0, dest, regE, muxV, 1'b0, 1'b1, 2'b00, destType, r1e, r2e, r1v, r2v);
endmodule  