transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/USER1/Digital\ Logic/BasicSequentialLogic/Part1 {C:/Users/USER1/Digital Logic/BasicSequentialLogic/Part1/Part1.v}

vlog -vlog01compat -work work +incdir+C:/Users/USER1/Digital\ Logic/BasicSequentialLogic/Part1 {C:/Users/USER1/Digital Logic/BasicSequentialLogic/Part1/rslatch_testbench.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  rslatch_testbench

add wave *
view structure
view signals
run -all
