transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/PC_Register.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Fetch_Adder.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench/VectorProcessor_tb.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Fetch_Stage.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/VectorProcessor.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Instr_Mem.sv}

