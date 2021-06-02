module ALU_Control (exec, opALU, operALUe, operALUve, operSum);
	input logic [4:0] exec;
	
	output logic [2:0] opALU;
	output logic operALUe;
	output logic operALUve;
	output logic operSum;
	
	logic func;
	logic [2:0] opcode;
	
	assign func = exec[4];
	assign opcode = exec[3:1];
	
	always@(*) begin
		case(func)
			1'b0: begin
				opALU <= opcode;
				case(opcode)
					3'b000: begin												// Operaciones MOV Escalar
						operALUe <= 1'b1;
						operALUve <= 1'b0;
						operSum <= 1'b0;										
					end
					3'b001: begin												// Operaciones MOV Escalar a vector
						operALUe <= 1'b0;
						operALUve <= 1'b1;
						operSum <= 1'b0;										
					end
					3'b010: begin												// Operaciones SUMA Escalar
						operALUe <= 1'b1;
						operALUve <= 1'b0;
						operSum <= 1'b0;									
					end
					3'b011: begin												// Operaciones RESTA Escalar
						operALUe <= 1'b1;
						operALUve <= 1'b0;
						operSum <= 1'b0;								
					end
					3'b100: begin												// Operaciones MULTIPLICACIÖN Vector Escalar
						operALUe <= 1'b0;
						operALUve <= 1'b1;
						operSum <= 1'b0;								
					end
					3'b101: begin												// Operaciones SUMA Vector Vector
						operALUe <= 1'b0;
						operALUve <= 1'b0;
						operSum <= 1'b1;							
					end
					3'b110: begin												// Operaciones DIVISIÓN Vector Escalar
						operALUe <= 1'b0;
						operALUve <= 1'b1;
						operSum <= 1'b0;								
					end
					3'b111: begin												// Operaciones Mult Escalar Escalar
						operALUe <= 1'b1;
						operALUve <= 1'b0;
						operSum <= 1'b0;								
					end
				endcase
			end
			1'b1: begin
				opALU <= 3'b111;
				operALUe <= 1'b0;
				operALUve <= 1'b0;
				operSum <= 1'b0;
			end
		endcase
	end
endmodule 	