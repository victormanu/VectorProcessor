module extendZero(input[7:0] in, output[20:0] out);

	assign out[7:0] = in[7:0];
	assign out[20:8] = '0;

endmodule 