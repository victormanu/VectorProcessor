module Control_Unit (instr, oper1, oper2, oper3, imm, EX, MEM, WB, regType, desType);
	input logic [19:0] instr;
	
	output logic [4:0] EX;
	output logic [3:0] MEM;
	output logic [1:0] WB;
	output logic [2:0] oper1;
	output logic [2:0] oper2;
	output logic [2:0] oper3;
	output logic [7:0] imm;
	output logic [2:0] regType;
	output logic desType;
	
	logic funct;
	logic [2:0] opCode;
	
	assign funct = instr[19];
	assign opCode = instr[18:16];
	
	assign EX[4:1] = instr[19:16]; 										// Func + opcode + Imm
	assign MEM = instr[19:16];										// Func + opcode
	assign WB = instr[15:14];								// Select_MUX_WB + Reg_Write
	
	always @(instr) begin
		case (funct)
			1'b1 : begin												// Operaciones LOAD | STORE.
				oper1 <= instr[13:11];
				oper2 <= instr[10:8];
				regType <= 3'b001;								// Vector escalar
				desType <= 1'b1;
				EX[0] <= 1'b0;
			end
			1'b0 : begin
				case(opCode)
					3'b000: begin												// Operaciones MOV Escalar
						oper1 <= instr[13:11];
						imm <= instr[7:0];
						regType <= 3'b010;								// Escalar
						desType <= 1'b0;
						EX[0] <= 1'b1;
					end
					3'b001: begin												// Operaciones MOV Escalar a vector
						oper1 <= instr[13:11];
						oper2 <= instr[10:8];
						regType <= 3'b000;								// Escalar
						desType <= 1'b1;
					end
					3'b010: begin												// Operaciones SUMA Escalar
						oper1 <= instr[13:11];
						imm <= instr[7:0];
						regType <= 3'b100;								// Escalar
						desType <= 1'b0;
						EX[0] <= 1'b1; 
					end
					3'b011: begin												// Operaciones RESTA Escalar
						oper1 <= instr[13:11];
						imm <= instr[7:0];
						regType <= 3'b100; 							// Escalar
						desType <= 1'b0;
						EX[0] <= 1'b1;
					end
					3'b100: begin												// Operaciones MULTIPLICACIÖN Vector Escalar
						oper1 <= instr[13:11];
						oper2 <= instr[10:8];
						oper3 <= instr[7:5];
						regType <= 3'b001;								// Vector escalar
						desType <= 1'b1;
						EX[0] <= 1'b0;
					end
					3'b101: begin												// Operaciones SUMA Vector Vector
						oper1 <= instr[13:11];
						oper2 <= instr[10:8];
						oper3 <= instr[7:5];
						regType <= 3'b011;								// Vector vector
						desType <= 1'b1;
						EX[0] <= 1'b0;
					end
					3'b110: begin												// Operaciones DIVISIÓN Vector Escalar
						oper1 <= instr[13:11];
						oper2 <= instr[10:8]; 
						oper3 <= instr[7:5];
						regType <= 3'b001;								// Vector escalar
						desType <= 1'b1;
						EX[0] <= 1'b0;
					end
					default: ;
				endcase
			end
		endcase
	end
endmodule 	