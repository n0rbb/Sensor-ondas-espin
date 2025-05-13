// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon May  5 11:42:18 2025
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ I2C_fifo_sim_netlist.v
// Design      : I2C_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2C_fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 70976)
`pragma protect data_block
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
aVHVfwKcr8XHj+0=
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
