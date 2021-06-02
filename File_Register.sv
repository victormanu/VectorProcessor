module File_Register(clk, A1, A2, A3, wd3e, wd3v, Reg_Read, Reg_write, regType, desType, r1e, r2e, r1v, r2v);

	input logic clk, Reg_Read, Reg_write;
	input logic [2:0] A1, A2, A3;
	input logic [20:0] wd3e;
	input logic [191:0] wd3v;
	input logic [2:0] regType;
	input logic desType;
	
	output logic [20:0] r1e; 
	output logic [20:0] r2e;
	
	output logic [191:0] r1v;
	output logic [191:0] r2v;
	
	logic [20:0] rfe[5:0] = '{default:8'b0};
	logic [191:0] rfv[5:0] = '{default:192'b0};
	
	always @(posedge clk) begin	 	
		if (Reg_write) begin						//Validación de señal de enable para la escritura.
			case(desType)
				1'b0: begin
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBank.mem", rfe);
					rfe[A3] = wd3e;
					$writememh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBank.mem", rfe);
				end
				1'b1: begin
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBankv.mem", rfv);
					rfv[A3] = wd3v;
					$writememh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBankv.mem", rfv);
				end
			endcase
		end
		if (Reg_Read) begin					// Validación para lectura
			//rf[8] <= 32'hFABFABFA;			//Dato para prueba
			//rf[3] <= 4;							//Dato para prueba
			//rf[9] <= 3;
			case(regType)				// A3 = op1; A2 = op3; A1= op2
				3'b000: begin 
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBank.mem", rfe);
					r2e <= rfe[A1];
				end
				3'b001: begin
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBank.mem", rfe);
					r1e <= rfe[A1];
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBankv.mem", rfv);
					r2v <= rfv[A2];
				end
				3'b010: ;
				3'b011: begin
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBankv.mem", rfv); 
					r1v <= rfv[A1];
					r2v <= rfv[A2];
				end
				3'b100: begin
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBank.mem", rfe);
					r1e <= rfe[A3];
				end
				3'b101: begin
					$readmemh("C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/regBank.mem", rfe);
					r1e <= rfe[A1];
					r2e <= rfe[A2];
				end
				default: ;
			endcase
		end
		
	end

endmodule 