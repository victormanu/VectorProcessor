module Fetch_Adder (A, B, out);
	input logic [20:0] A, B;
	output logic [20:0] out;
		
	always @(*) begin
		out <= A + B;
	end
endmodule 