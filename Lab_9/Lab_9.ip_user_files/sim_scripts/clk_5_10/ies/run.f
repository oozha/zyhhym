-makelib ies_lib/xil_defaultlib -sv \
  "E:/Xilinx_Vivado/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "E:/Xilinx_Vivado/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx_Vivado/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../Lab_9.srcs/sources_1/ip/clk_5_10/clk_5_10_clk_wiz.v" \
  "../../../../Lab_9.srcs/sources_1/ip/clk_5_10/clk_5_10.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

