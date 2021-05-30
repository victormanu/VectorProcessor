module File_Register(clk, A1, A2, A3, WD3, Reg_Read, Reg_write, regType, desType, r1e, r2e, r1v, r2v);

	input logic clk, Reg_Read, Reg_write;
	input logic [3:0] A1, A2, A3;
	input logic [20:0] WD3;
	input logic [1:0] regType;
	input logic desType;
	
	output logic [7:0] r1e;
	output logic [7:0] r2e;
	
	output logic [191:0] r1v;
	output logic [191:0] r2v;
	
	logic [20:0] rfe[5:0];
	logic [191:0] rfv[5:0];
	
	always @(posedge clk) begin		
		if (Reg_write) begin						//Validación de señal de enable para la escritura.
			case(desType)
				1'b0: begin
					rfe[A3] <= WD3;
				end
				1'b1: begin
					rfv[A3] <= WD3;
				end
			endcase
		end
		if (Reg_Read) begin					// Validación para lectura
			//rf[8] <= 32'hFABFABFA;			//Dato para prueba
			//rf[3] <= 4;							//Dato para prueba
			//rf[9] <= 3;
			case(regType)				// A3 = op1; A2 = op3; A1= op2
				2'b00: begin
					//r1e <= rfe[A1];
					r2e <= rfe[A2];
				end
				2'b01: begin
					r1e <= rfe[A1];
					r2v <= rfv[A2];
				end
				2'b10: ;
				2'b11: begin
					r1v <= rfv[A1];
					r2v <= rfv[A2];
				end
			endcase
		end
	end

endmodule 