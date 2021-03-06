module ControlUnit_tb ();

	logic [19:0] instr;
	
	logic [4:0] EX;
	logic [3:0] MEM;
	logic [1:0] WB; 
	logic [2:0] oper1;
	logic [2:0] oper2;
	logic [2:0] oper3;
	logic [7:0] imm;
	logic [1:0] regType;
	logic desType;
	
	Control_Unit DUT (instr, oper1, oper2, oper3, imm, EX, MEM, WB, regType, desType);
	
	initial begin
		instr = 20'h0D402;		// MOV Escalar Imm
		#10;
		instr = 20'h7D380;		// Mult Escalar Escalar
	end
endmodule 