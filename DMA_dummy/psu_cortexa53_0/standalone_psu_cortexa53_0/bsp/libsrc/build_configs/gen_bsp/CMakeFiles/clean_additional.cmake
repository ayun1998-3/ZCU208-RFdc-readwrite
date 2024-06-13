# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "")
  file(REMOVE_RECURSE
  "C:\\Xilinx\\Vitis_Repo\\ZCU208-RFdc-readwrite\\DMA_dummy\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\sleep.h"
  "C:\\Xilinx\\Vitis_Repo\\ZCU208-RFdc-readwrite\\DMA_dummy\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xiltimer.h"
  "C:\\Xilinx\\Vitis_Repo\\ZCU208-RFdc-readwrite\\DMA_dummy\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\include\\xtimer_config.h"
  "C:\\Xilinx\\Vitis_Repo\\ZCU208-RFdc-readwrite\\DMA_dummy\\psu_cortexa53_0\\standalone_psu_cortexa53_0\\bsp\\lib\\libxiltimer.a"
  )
endif()
