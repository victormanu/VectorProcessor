module Data_Mem (dir, data, opType, out);
	input logic opType;
	input logic [20:0] dir;
	input logic [191:0] data;
	output logic [191:0] out;
	
	logic [191:0] RAM[8192:0]  = '{default:192'b0};
	
	always @(dir) begin
		case(opType)
			1'b0 : begin
				$readmemh("C:/Users/victo/Desktop/pruebaQuartus/PixelsTest/image.mem", RAM);
				out <= RAM[dir];
			end
			1'b1 : begin
				$readmemh("C:/Users/victo/Desktop/pruebaQuartus/PixelsTest/image.mem", RAM);
				RAM[dir] = data;
				$writememh("C:/Users/victo/Desktop/pruebaQuartus/PixelsTest/image.mem", RAM);
			end
		endcase
	end 
endmodule 