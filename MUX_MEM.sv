module MUX_MEM (inp0, inp1, opcode, out);
	input logic [191:0] inp0, inp1;
	input logic [2:0] opcode;
	
	output logic [191:0] out;
	
	always @(*) begin
		case(opcode)
			3'b101: begin
				out <= inp0;
			end
			default: begin
				out <= inp1;
			end
		endcase
	end
endmodule 