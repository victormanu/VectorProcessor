module MEM_Stage (clk, dirMem, data, mem, resALUve, resSum, data_out, mux_out);
	input logic clk;
	input logic [20:0] dirMem; 
	input logic [191:0] data;
	input logic [3:0] mem;
	input logic [191:0] resALUve;
	input logic [191:0] resSum;
	
	output logic [191:0] data_out;
	output logic [191:0] mux_out;
	
	logic opType;
	logic funct;
	logic [2:0] opCode;
	logic [191:0] RAM[100:0]  = '{default:192'b0}; // 8192
	
	assign opCode = mem[2:0];
	assign funct = mem[3];

	
	always @(posedge clk) begin
		case(funct) 
			1'b0: ; 
			1'b1: begin
				case(opCode)
					3'b000: begin
						$display("LoAD");
						$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/image.mem", RAM);
						data_out <= RAM[dirMem];
					end
					3'b001: begin
						$display("Store"); 
						$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/image.mem", RAM);
						RAM[dirMem] = data;
						$writememh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/image.mem", RAM);
					end
					default: ;
				endcase 
			end
		endcase 
	end
	
	MUX_MEM muxXmem(resSum, resALUve, opCode, mux_out);
	//Data_Mem dataMem(dirMem, data, opType, data_out);
	
	
endmodule 