// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon May  5 11:42:19 2025
// Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/worbb/Desktop/IMA/Sensor-ondas-espin/2025-Heterodyne-Spartan7/SW_Sensor/SW_Sensor.gen/sources_1/ip/I2C_fifo/I2C_fifo_stub.v
// Design      : I2C_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7s25csga225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_10,Vivado 2024.1" *)
module I2C_fifo(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="srst,din[7:0],wr_en,rd_en,dout[7:0],full,empty" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input srst;
  input [7:0]din;
  input wr_en;
  input rd_en;
  output [7:0]dout;
  output full;
  output empty;
endmodule
