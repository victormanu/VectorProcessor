transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/PC_Register.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Fetch_Adder.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench/VectorProcessor_tb.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/ADDER_VV.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/ALU_VE.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/MUX_ALU.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/ALU.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALU_Control.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Pipes {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Pipes/IF_ID.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Pipes {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Pipes/ID_EX.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Pipes {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Pipes/EX_MEM.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/extendZero.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Control_Unit.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Fetch_Stage.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/EXEC_Stage.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Decode_Stage.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/VectorProcessor.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Instr_Mem.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/File_Register.sv}

