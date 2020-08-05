vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Lab_9.srcs/sources_1/Frequency_Divider_Demo/Frequency_Divider_Demo.srcs/sources_1/new/clk_division.v" \
"../../../../Lab_9.srcs/sources_1/ip/clk_division_0/sim/clk_division_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

