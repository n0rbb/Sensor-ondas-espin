// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon May  5 11:42:19 2025
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/worbb/Desktop/IMA/Sensor-ondas-espin/2025-Heterodyne-Spartan7/SW_Sensor/SW_Sensor.gen/sources_1/ip/I2C_fifo/I2C_fifo_sim_netlist.v
// Design      : I2C_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module I2C_fifo
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire srst;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [3:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [3:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [3:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "4" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "spartan7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "1" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "14" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "13" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "4" *) 
  (* C_RD_DEPTH = "16" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "4" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "4" *) 
  (* C_WR_DEPTH = "16" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "4" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  I2C_fifo_fifo_generator_v13_2_10 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[3:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[3:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(srst),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[3:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70640)
`pragma protect data_block
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
w9wrYIF4M3a59GUWIjGvJAY=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
