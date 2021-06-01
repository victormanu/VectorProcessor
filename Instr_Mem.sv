module Instr_Mem ( A, RD);
	input logic [20:0] A;
	output logic [20:0] RD;
	logic [20:0] RAM[50:0]  = '{default:21'b0};	

	always @(A) begin
		$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/memFile.mem", RAM);
		$display("%p",RAM);
		RD <= RAM[A];
	end 

endmodule 