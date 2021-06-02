module Fetch_Adder (A, B, out);
	input logic [19:0] A, B;
	output logic [19:0] out;
		
	always @(*) begin
		out <= A + B;
	end
endmodule 