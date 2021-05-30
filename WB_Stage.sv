module WB_Stage (clk, dest ,memData, regData, wb, salida);
	input logic clk;
	input logic [3:0] dest;
	input logic [31:0] memData;
	input logic [31:0] regData;
	input logic [1:0] wb;
	
	output logic [31:0] salida;
	
	logic slc;
	logic [31:0] muxOut;
	logic [31:0] r1, r2;
	
	assign slc = wb[1];
	
	MUX_WB muxwb(memData, regData, slc, muxOut);
	File_Register regBank (clk, 4'b0, 4'b0, dest, muxOut, 1'b0, 1'b1, r1, r2);
	
	assign salida = muxOut; 
endmodule  