@echo off
cd /D C:\Xilinx\Vitis_Repo\ZCU208-RFdc-readwrite\DMA_dummy\zynqmp_fsbl\zynqmp_fsbl_bsp\libsrc\build_configs\gen_bsp || (set FAIL_LINE=2& goto :ABORT)
aarch64-none-elf-ar -qcs C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libxil.a C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bd.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_bdring.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axidma/src/CMakeFiles/axidma.dir/xaxidma_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axipmon/src/CMakeFiles/axipmon.dir/xaxipmon.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axipmon/src/CMakeFiles/axipmon.dir/xaxipmon_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axipmon/src/CMakeFiles/axipmon.dir/xaxipmon_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/axipmon/src/CMakeFiles/axipmon.dir/xaxipmon_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps_mux.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps_divider.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps_gate.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps_fixedfactor.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/clockps/src/CMakeFiles/clockps.dir/xclockps_pll.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/coresightps_dcc/src/CMakeFiles/coresightps_dcc.dir/xcoresightpsdcc.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/csudma/src/CMakeFiles/csudma.dir/xcsudma.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/csudma/src/CMakeFiles/csudma.dir/xcsudma_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/csudma/src/CMakeFiles/csudma.dir/xcsudma_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/csudma/src/CMakeFiles/csudma.dir/xcsudma_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/csudma/src/CMakeFiles/csudma.dir/xcsudma_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ddrcpsu/src/CMakeFiles/ddrcpsu.dir/xddrcpsu.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ddrcpsu/src/CMakeFiles/ddrcpsu.dir/xddrcpsu_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ddrcpsu/src/CMakeFiles/ddrcpsu.dir/xddrcpsu_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_hw.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_control.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_bdring.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/emacps/src/CMakeFiles/emacps.dir/xemacps_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/gpiops/src/CMakeFiles/gpiops.dir/xgpiops_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/gpiops/src/CMakeFiles/gpiops.dir/xgpiops_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/gpiops/src/CMakeFiles/gpiops.dir/xgpiops.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/gpiops/src/CMakeFiles/gpiops.dir/xgpiops_hw.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/gpiops/src/CMakeFiles/gpiops.dir/xgpiops_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/gpiops/src/CMakeFiles/gpiops.dir/xgpiops_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_slave.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_hw.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_master.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_options.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_xfer.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/iicps/src/CMakeFiles/iicps.dir/xiicps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ipipsu/src/CMakeFiles/ipipsu.dir/xipipsu_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ipipsu/src/CMakeFiles/ipipsu.dir/xipipsu_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ipipsu/src/CMakeFiles/ipipsu.dir/xipipsu.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ipipsu/src/CMakeFiles/ipipsu.dir/xipipsu_buf.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ipipsu/src/CMakeFiles/ipipsu.dir/xipipsu_helper.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/CMakeFiles/qspipsu.dir/xqspipsu.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/CMakeFiles/qspipsu.dir/xqspipsu_control.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/CMakeFiles/qspipsu.dir/xqspipsu_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/CMakeFiles/qspipsu.dir/xqspipsu_options.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/CMakeFiles/qspipsu.dir/xqspipsu_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/CMakeFiles/qspipsu.dir/xqspipsu_xfer.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/qspipsu/src/CMakeFiles/qspipsu.dir/xqspipsu_hw.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/resetps/src/CMakeFiles/resetps.dir/xresetps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/resetps/src/CMakeFiles/resetps.dir/xresetps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/resetps/src/CMakeFiles/resetps.dir/xresetps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/rtcpsu/src/CMakeFiles/rtcpsu.dir/xrtcpsu_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/rtcpsu/src/CMakeFiles/rtcpsu.dir/xrtcpsu_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/rtcpsu/src/CMakeFiles/rtcpsu.dir/xrtcpsu_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/rtcpsu/src/CMakeFiles/rtcpsu.dir/xrtcpsu.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/rtcpsu/src/CMakeFiles/rtcpsu.dir/xrtcpsu_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_hw.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/scugic/src/CMakeFiles/scugic.dir/xscugic.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sdps/src/CMakeFiles/sdps.dir/xsdps_host.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sdps/src/CMakeFiles/sdps.dir/xsdps_options.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sdps/src/CMakeFiles/sdps.dir/xsdps_card.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sdps/src/CMakeFiles/sdps.dir/xsdps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sdps/src/CMakeFiles/sdps.dir/xsdps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sdps/src/CMakeFiles/sdps.dir/xsdps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/sysmonpsu/src/CMakeFiles/sysmonpsu.dir/xsysmonpsu_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ttcps/src/CMakeFiles/ttcps.dir/xttcps_options.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ttcps/src/CMakeFiles/ttcps.dir/xttcps_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ttcps/src/CMakeFiles/ttcps.dir/xttcps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ttcps/src/CMakeFiles/ttcps.dir/xttcps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/ttcps/src/CMakeFiles/ttcps.dir/xttcps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/CMakeFiles/uartps.dir/xuartps_hw.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/CMakeFiles/uartps.dir/xuartps_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/CMakeFiles/uartps.dir/xuartps_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/CMakeFiles/uartps.dir/xuartps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/CMakeFiles/uartps.dir/xuartps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/CMakeFiles/uartps.dir/xuartps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/uartps/src/CMakeFiles/uartps.dir/xuartps_options.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_controltransfers.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_endpoint.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_hibernation.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_command.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_device.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_ep0handler.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_ephandler.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/usbpsu/src/CMakeFiles/usbpsu.dir/xusbpsu_event.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/wdtps/src/CMakeFiles/wdtps.dir/xwdtps_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/wdtps/src/CMakeFiles/wdtps.dir/xwdtps_g.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/wdtps/src/CMakeFiles/wdtps.dir/xwdtps_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/wdtps/src/CMakeFiles/wdtps.dir/xwdtps.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/zdma/src/CMakeFiles/zdma.dir/xzdma_intr.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/zdma/src/CMakeFiles/zdma.dir/xzdma_sinit.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/zdma/src/CMakeFiles/zdma.dir/xzdma_selftest.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/zdma/src/CMakeFiles/zdma.dir/xzdma.c.obj C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libsrc/zdma/src/CMakeFiles/zdma.dir/xzdma_g.c.obj || (set FAIL_LINE=3& goto :ABORT)
C:\Xilinx\Vitis\2024.1\tps\win64\cmake-3.24.2\bin\cmake.exe -E copy C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/libsrc/build_configs/gen_bsp/libxil.a C:/Xilinx/Vitis_Repo/ZCU208-RFdc-readwrite/DMA_dummy/zynqmp_fsbl/zynqmp_fsbl_bsp/lib || (set FAIL_LINE=4& goto :ABORT)
goto :EOF

:ABORT
set ERROR_CODE=%ERRORLEVEL%
echo Batch file failed at line %FAIL_LINE% with errorcode %ERRORLEVEL%
exit /b %ERROR_CODE%