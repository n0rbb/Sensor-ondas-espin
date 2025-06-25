// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Jun 25 11:33:50 2025
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RS232_fifo -prefix
//               RS232_fifo_ RS232_fifo_sim_netlist.v
// Design      : RS232_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RS232_fifo,fifo_generator_v13_2_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module RS232_fifo
   (clk,
    srst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_mode = "slave core_clk" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  input srst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* x_interface_mode = "slave FIFO_WRITE" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* x_interface_mode = "slave FIFO_READ" *) input rd_en;
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
  RS232_fifo_fifo_generator_v13_2_13 U0
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 79664)
`pragma protect data_block
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
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
