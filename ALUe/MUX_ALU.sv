module MUX_ALU (inp0, inp1, select, out);
	input logic [20:0] inp0, inp1;
	input logic select;
	output logic [20:0] out;
	
	assign out = select ? inp1 : inp0;
endmodule 