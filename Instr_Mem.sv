module Instr_Mem ( A, RD);
	input logic [19:0] A;
	output logic [19:0] RD;
	logic [19:0] RAM[19:0]  = '{default:20'b0};	

	always @(A) begin
		$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/memFile.mem", RAM);
		RD <= RAM[A];
	end 

endmodule 