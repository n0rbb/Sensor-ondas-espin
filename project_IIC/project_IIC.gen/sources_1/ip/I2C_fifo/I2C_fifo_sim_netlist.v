// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat May  3 20:37:27 2025
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/worbb/Desktop/IMA/FPGA/project_IIC/project_IIC.gen/sources_1/ip/I2C_fifo/I2C_fifo_sim_netlist.v
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
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "6" *) 
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
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "62" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "61" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
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
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 77248)
`pragma protect data_block
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
BZoZeHt+lXIeebfi+w==
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
