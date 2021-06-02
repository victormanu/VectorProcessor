module DataMem_tb ();

	logic opType;
	logic [20:0] dir;
	logic [191:0] data;
	
	logic [191:0] out; 
	
	Data_Mem DUT(dir, data, opType, out); 
	
	initial begin
		dir = 0;
		data = 20'h00000;
		opType = 1'b0;
		#10;
		dir = 5;
		data = 192'h90aafe1706fe1700fe1704fe1703fe1745fe1764fe1758aa;
		opType = 1'b1; 
		#10;
	end
endmodule 