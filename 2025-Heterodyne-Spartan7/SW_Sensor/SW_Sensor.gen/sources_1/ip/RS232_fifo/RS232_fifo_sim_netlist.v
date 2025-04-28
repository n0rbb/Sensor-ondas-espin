// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Apr 22 12:23:32 2025
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/worbb/Desktop/IMA/FPGA/SW_Sensor/SW_Sensor.gen/sources_1/ip/RS232_fifo/RS232_fifo_sim_netlist.v
// Design      : RS232_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RS232_fifo,fifo_generator_v13_2_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *) 
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
  RS232_fifo_fifo_generator_v13_2_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 77312)
`pragma protect data_block
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
Nvi6CTI/A28kRknhKdO0Z/OjZLw=
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
