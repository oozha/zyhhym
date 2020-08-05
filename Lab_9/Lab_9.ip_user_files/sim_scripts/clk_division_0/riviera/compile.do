vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Lab_9.srcs/sources_1/Frequency_Divider_Demo/Frequency_Divider_Demo.srcs/sources_1/new/clk_division.v" \
"../../../../Lab_9.srcs/sources_1/ip/clk_division_0/sim/clk_division_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

