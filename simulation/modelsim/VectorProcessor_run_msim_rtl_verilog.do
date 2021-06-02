transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/Testbench/Mem_tb.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/MUX_MEM.sv}
vlog -sv -work work +incdir+C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor {C:/Users/victo/Desktop/pruebaQuartus/VectorProcessor/MEM_Stage.sv}

