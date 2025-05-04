-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Sun May  4 11:44:29 2025
-- Host        : DESKTOP-NDA5VSL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/worbb/Desktop/IMA/FPGA/project_IIC/project_IIC.sim/sim_1/synth/func/xsim/tb_IIC_Receiver_func_synth.vhd
-- Design      : I2C_top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25csga225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_receiver is
  port (
    out1 : out STD_LOGIC;
    in0 : in STD_LOGIC;
    srst : in STD_LOGIC
  );
end I2C_receiver;

architecture STRUCTURE of I2C_receiver is
  signal \FSM_onehot_current_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_current_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \^out1\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[0]\ : label is "idle:000001,rcvaddr:000010,chkaddr:000100,sendack:001000,rcvdata:010000,stopcond:100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_current_state_reg[1]\ : label is "idle:000001,rcvaddr:000010,chkaddr:000100,sendack:001000,rcvdata:010000,stopcond:100000";
begin
  out1 <= \^out1\;
\FSM_onehot_current_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_current_state_reg_n_0_[0]\,
      I1 => \^out1\,
      O => \FSM_onehot_current_state[1]_i_1_n_0\
    );
\FSM_onehot_current_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => in0,
      CE => '1',
      D => '0',
      PRE => srst,
      Q => \FSM_onehot_current_state_reg_n_0_[0]\
    );
\FSM_onehot_current_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => in0,
      CE => '1',
      CLR => srst,
      D => \FSM_onehot_current_state[1]_i_1_n_0\,
      Q => \^out1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_shiftregister is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    srst : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    SCL : in STD_LOGIC;
    RESET_IBUF : in STD_LOGIC
  );
end I2C_shiftregister;

architecture STRUCTURE of I2C_shiftregister is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^srst\ : STD_LOGIC;
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
  srst <= \^srst\;
\FSM_onehot_current_state[1]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RESET_IBUF,
      O => \^srst\
    );
\Q_buffer_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => \^q\(1),
      Q => \^q\(0)
    );
\Q_buffer_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => \^q\(2),
      Q => \^q\(1)
    );
\Q_buffer_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => \^q\(3),
      Q => \^q\(2)
    );
\Q_buffer_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => \^q\(4),
      Q => \^q\(3)
    );
\Q_buffer_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => \^q\(5),
      Q => \^q\(4)
    );
\Q_buffer_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => \^q\(6),
      Q => \^q\(5)
    );
\Q_buffer_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => \^q\(7),
      Q => \^q\(6)
    );
\Q_buffer_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => SCL,
      CE => E(0),
      CLR => \^srst\,
      D => D(0),
      Q => \^q\(7)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 104736)
`protect data_block
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
FU0Fac6VB8EjJAFPYaMmP+PBe4EUa7NzwWUE
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_fifo is
  port (
    clk : in STD_LOGIC;
    srst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2C_fifo : entity is "I2C_fifo,fifo_generator_v13_2_10,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2C_fifo : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of I2C_fifo : entity is "fifo_generator_v13_2_10,Vivado 2024.1";
end I2C_fifo;

architecture STRUCTURE of I2C_fifo is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "spartan7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 1;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 1;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 62;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 61;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 64;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 6;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 1;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 64;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 6;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 core_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0";
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.I2C_fifo_fifo_generator_v13_2_10
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => clk,
      data_count(5 downto 0) => NLW_U0_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(5 downto 0) => B"000000",
      prog_empty_thresh_assert(5 downto 0) => B"000000",
      prog_empty_thresh_negate(5 downto 0) => B"000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(5 downto 0) => B"000000",
      prog_full_thresh_assert(5 downto 0) => B"000000",
      prog_full_thresh_negate(5 downto 0) => B"000000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_U0_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => srst,
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2C_top is
  port (
    CLK_PORT : in STD_LOGIC;
    RESET : in STD_LOGIC;
    SCL : in STD_LOGIC;
    SDA : inout STD_LOGIC;
    DATA_READ : in STD_LOGIC;
    DATA_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    FULL : out STD_LOGIC;
    EMPTY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2C_top : entity is true;
end I2C_top;

architecture STRUCTURE of I2C_top is
  signal CLK_PORT_IBUF : STD_LOGIC;
  signal CLK_PORT_IBUF_BUFG : STD_LOGIC;
  signal DATA_READ_IBUF : STD_LOGIC;
  signal EMPTY_OBUF : STD_LOGIC;
  signal FULL_OBUF : STD_LOGIC;
  signal RESET_IBUF : STD_LOGIC;
  signal Receiver_n_0 : STD_LOGIC;
  signal SCL_IBUF : STD_LOGIC;
  signal SCL_IBUF_BUFG : STD_LOGIC;
  signal SDA_IBUF : STD_LOGIC;
  signal SR_BYTE : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal srst : STD_LOGIC;
  signal NLW_FIFO_dout_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute IMPORTED_FROM : string;
  attribute IMPORTED_FROM of FIFO : label is "c:/Users/worbb/Desktop/IMA/FPGA/project_IIC/project_IIC.gen/sources_1/ip/I2C_fifo/I2C_fifo.dcp";
  attribute IMPORTED_TYPE : string;
  attribute IMPORTED_TYPE of FIFO : label is "CHECKPOINT";
  attribute IS_IMPORTED : boolean;
  attribute IS_IMPORTED of FIFO : label is std.standard.true;
  attribute syn_black_box : string;
  attribute syn_black_box of FIFO : label is "TRUE";
  attribute x_core_info : string;
  attribute x_core_info of FIFO : label is "fifo_generator_v13_2_10,Vivado 2024.1";
  attribute schmitt_trigger : string;
  attribute schmitt_trigger of SCL_IBUF_inst : label is "true";
  attribute schmitt_trigger of SCL : signal is "true";
  attribute schmitt_trigger of SDA : signal is "true";
begin
CLK_PORT_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_PORT_IBUF,
      O => CLK_PORT_IBUF_BUFG
    );
CLK_PORT_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK_PORT,
      O => CLK_PORT_IBUF
    );
\DATA_OUT_OBUF[0]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(0),
      T => '1'
    );
\DATA_OUT_OBUF[1]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(1),
      T => '1'
    );
\DATA_OUT_OBUF[2]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(2),
      T => '1'
    );
\DATA_OUT_OBUF[3]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(3),
      T => '1'
    );
\DATA_OUT_OBUF[4]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(4),
      T => '1'
    );
\DATA_OUT_OBUF[5]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(5),
      T => '1'
    );
\DATA_OUT_OBUF[6]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(6),
      T => '1'
    );
\DATA_OUT_OBUF[7]_inst\: unisim.vcomponents.OBUFT
     port map (
      I => '0',
      O => DATA_OUT(7),
      T => '1'
    );
DATA_READ_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => DATA_READ,
      O => DATA_READ_IBUF
    );
EMPTY_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => EMPTY_OBUF,
      O => EMPTY
    );
FIFO: entity work.I2C_fifo
     port map (
      clk => CLK_PORT_IBUF_BUFG,
      din(7 downto 0) => SR_BYTE(7 downto 0),
      dout(7 downto 0) => NLW_FIFO_dout_UNCONNECTED(7 downto 0),
      empty => EMPTY_OBUF,
      full => FULL_OBUF,
      rd_en => DATA_READ_IBUF,
      srst => srst,
      wr_en => '0'
    );
FULL_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => FULL_OBUF,
      O => FULL
    );
RESET_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RESET,
      O => RESET_IBUF
    );
Receiver: entity work.I2C_receiver
     port map (
      in0 => CLK_PORT_IBUF_BUFG,
      out1 => Receiver_n_0,
      srst => srst
    );
SCL_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => SCL_IBUF,
      O => SCL_IBUF_BUFG
    );
SCL_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SCL,
      O => SCL_IBUF
    );
SDA_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SDA,
      O => SDA_IBUF
    );
ShiftRegister: entity work.I2C_shiftregister
     port map (
      D(0) => SDA_IBUF,
      E(0) => Receiver_n_0,
      Q(7 downto 0) => SR_BYTE(7 downto 0),
      RESET_IBUF => RESET_IBUF,
      SCL => SCL_IBUF_BUFG,
      srst => srst
    );
end STRUCTURE;
