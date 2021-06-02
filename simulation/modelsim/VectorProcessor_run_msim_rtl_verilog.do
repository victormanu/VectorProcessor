transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench/Exec_tb.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/ADDER_VV.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/ALU_VE.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/MUX_ALU.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALUe/ALU.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/ALU_Control.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/EXEC_Stage.sv}

