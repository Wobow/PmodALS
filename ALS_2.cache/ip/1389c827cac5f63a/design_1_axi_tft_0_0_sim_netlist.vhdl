-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Tue May 09 14:40:00 2017
-- Host        : DESKTOP-J55D3FQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_axi_tft_0_0_sim_netlist.vhdl
-- Design      : design_1_axi_tft_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl is
  port (
    \out\ : out STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_push_addr_reg1_out : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    sig_pcc2addr_burst : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rd_addr_valid_reg0 : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \sig_xfer_len_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl is
  signal sig_addr2stat_calc_error : STD_LOGIC;
  signal sig_addr_reg_full : STD_LOGIC;
  signal sig_next_addr_reg0 : STD_LOGIC;
  signal sig_posted_to_axi : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_posted_to_axi : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_posted_to_axi : signal is "no";
  signal sig_posted_to_axi_2 : STD_LOGIC;
  attribute RTL_KEEP of sig_posted_to_axi_2 : signal is "true";
  attribute equivalent_register_removal of sig_posted_to_axi_2 : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_posted_to_axi_2_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_2_reg : label is "no";
  attribute KEEP of sig_posted_to_axi_reg : label is "yes";
  attribute equivalent_register_removal of sig_posted_to_axi_reg : label is "no";
begin
  \out\ <= sig_posted_to_axi;
sig_addr_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => '0',
      Q => sig_addr2stat_cmd_fifo_empty,
      S => sig_next_addr_reg0
    );
sig_addr_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_push_addr_reg1_out,
      Q => sig_addr_reg_full,
      R => sig_next_addr_reg0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_pcc2data_calc_error,
      Q => sig_addr2stat_calc_error,
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(0),
      Q => m_axi_araddr(0),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(10),
      Q => m_axi_araddr(10),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(11),
      Q => m_axi_araddr(11),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(12),
      Q => m_axi_araddr(12),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(13),
      Q => m_axi_araddr(13),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(14),
      Q => m_axi_araddr(14),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(15),
      Q => m_axi_araddr(15),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(16),
      Q => m_axi_araddr(16),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(17),
      Q => m_axi_araddr(17),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(18),
      Q => m_axi_araddr(18),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(19),
      Q => m_axi_araddr(19),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(1),
      Q => m_axi_araddr(1),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(20),
      Q => m_axi_araddr(20),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(21),
      Q => m_axi_araddr(21),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(22),
      Q => m_axi_araddr(22),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(23),
      Q => m_axi_araddr(23),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(24),
      Q => m_axi_araddr(24),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(25),
      Q => m_axi_araddr(25),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(26),
      Q => m_axi_araddr(26),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(27),
      Q => m_axi_araddr(27),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(28),
      Q => m_axi_araddr(28),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(29),
      Q => m_axi_araddr(29),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(2),
      Q => m_axi_araddr(2),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(30),
      Q => m_axi_araddr(30),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(31),
      Q => m_axi_araddr(31),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(3),
      Q => m_axi_araddr(3),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(4),
      Q => m_axi_araddr(4),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(5),
      Q => m_axi_araddr(5),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(6),
      Q => m_axi_araddr(6),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(7),
      Q => m_axi_araddr(7),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(8),
      Q => m_axi_araddr(8),
      R => sig_next_addr_reg0
    );
\sig_next_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => Q(9),
      Q => m_axi_araddr(9),
      R => sig_next_addr_reg0
    );
\sig_next_burst_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_pcc2addr_burst(0),
      Q => m_axi_arburst(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(0),
      Q => m_axi_arlen(0),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(1),
      Q => m_axi_arlen(1),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(2),
      Q => m_axi_arlen(2),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(3),
      Q => m_axi_arlen(3),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(4),
      Q => m_axi_arlen(4),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(5),
      Q => m_axi_arlen(5),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(6),
      Q => m_axi_arlen(6),
      R => sig_next_addr_reg0
    );
\sig_next_len_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => \sig_xfer_len_reg_reg[7]\(7),
      Q => m_axi_arlen(7),
      R => sig_next_addr_reg0
    );
\sig_next_size_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => '1',
      Q => m_axi_arsize(0),
      R => sig_next_addr_reg0
    );
sig_posted_to_axi_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_push_addr_reg1_out,
      Q => sig_posted_to_axi_2,
      R => sig_rdwr_reset_reg_reg
    );
sig_posted_to_axi_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_push_addr_reg1_out,
      Q => sig_posted_to_axi,
      R => sig_rdwr_reset_reg_reg
    );
sig_rd_addr_valid_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BAAAAAAA"
    )
        port map (
      I0 => sig_rdwr_reset_reg_reg,
      I1 => sig_addr2stat_calc_error,
      I2 => sig_cmd2all_doing_read,
      I3 => m_axi_arready,
      I4 => sig_addr_reg_full,
      O => sig_next_addr_reg0
    );
sig_rd_addr_valid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_addr_reg1_out,
      D => sig_rd_addr_valid_reg0,
      Q => m_axi_arvalid,
      R => sig_next_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status is
  port (
    sig_cmd2pcc_cmd_valid : out STD_LOGIC;
    sig_cmd_mst_be : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_cmd_empty_reg : out STD_LOGIC;
    sig_cmd2all_doing_read : out STD_LOGIC;
    sig_cmd_cmplt_reg_reg_0 : out STD_LOGIC;
    sig_status_reg_empty : out STD_LOGIC;
    md_error : out STD_LOGIC;
    sig_rdwr2llink_int_err : out STD_LOGIC;
    bus2ip_mst_cmdack : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rd_sts_tag_reg0 : out STD_LOGIC;
    sig_push_status1_out : out STD_LOGIC;
    sig_rd_addr_valid_reg0 : out STD_LOGIC;
    sig_rd_llink_enable : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 24 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_push_cmd_reg : in STD_LOGIC;
    ip2bus_mstrd_req : in STD_LOGIC;
    ip2bus_mst_type : in STD_LOGIC;
    sig_rd_sts_slverr_reg_reg : in STD_LOGIC;
    sig_calc_error_reg_reg : in STD_LOGIC;
    sig_btt_cntr0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC;
    sig_pcc_taking_command : in STD_LOGIC;
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_llink_busy_reg : in STD_LOGIC;
    \tft_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status is
  signal \^bus2ip_mst_cmdack\ : STD_LOGIC;
  signal \^sig_cmd2all_doing_read\ : STD_LOGIC;
  signal sig_cmd_cmplt_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_cmd_cmplt_reg_reg_0\ : STD_LOGIC;
  signal \^sig_cmd_empty_reg\ : STD_LOGIC;
  signal sig_cmd_empty_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_cmd_mst_be\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_cmd_mstrd_req : STD_LOGIC;
  signal sig_cmd_type_req : STD_LOGIC;
  signal sig_cmdack_reg_i_1_n_0 : STD_LOGIC;
  signal sig_doing_read_reg_i_1_n_0 : STD_LOGIC;
  signal sig_init_reg1 : STD_LOGIC;
  signal sig_init_reg2 : STD_LOGIC;
  signal sig_int_error_pulse_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_push_status1_out\ : STD_LOGIC;
  signal \^sig_rdwr2llink_int_err\ : STD_LOGIC;
  signal \^sig_status_reg_empty\ : STD_LOGIC;
  signal sig_status_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_status_reg_full : STD_LOGIC;
  signal sig_status_reg_full_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sig_btt_cntr[3]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sig_btt_cntr[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of sig_error_sh_reg_i_2 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of sig_llink_busy_i_2 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_rd_addr_valid_reg_i_3 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_full_i_1 : label is "soft_lutpair17";
begin
  bus2ip_mst_cmdack <= \^bus2ip_mst_cmdack\;
  sig_cmd2all_doing_read <= \^sig_cmd2all_doing_read\;
  sig_cmd_cmplt_reg_reg_0 <= \^sig_cmd_cmplt_reg_reg_0\;
  sig_cmd_empty_reg <= \^sig_cmd_empty_reg\;
  sig_cmd_mst_be(0) <= \^sig_cmd_mst_be\(0);
  sig_push_status1_out <= \^sig_push_status1_out\;
  sig_rdwr2llink_int_err <= \^sig_rdwr2llink_int_err\;
  sig_status_reg_empty <= \^sig_status_reg_empty\;
\sig_btt_cntr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \^sig_cmd_mst_be\(0),
      I1 => sig_cmd_type_req,
      I2 => sig_calc_error_reg_reg,
      I3 => sig_btt_cntr0(0),
      O => D(0)
    );
\sig_btt_cntr[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \^sig_cmd_mst_be\(0),
      I1 => sig_cmd_type_req,
      I2 => sig_calc_error_reg_reg,
      I3 => sig_btt_cntr0(1),
      O => D(1)
    );
sig_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000070"
    )
        port map (
      I0 => sig_llink_busy_reg,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => sig_status_reg_full,
      I3 => \out\,
      I4 => \^sig_cmd_cmplt_reg_reg_0\,
      O => sig_cmd_cmplt_reg_i_1_n_0
    );
sig_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_cmplt_reg_i_1_n_0,
      Q => \^sig_cmd_cmplt_reg_reg_0\,
      R => '0'
    );
sig_cmd_empty_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF22F2"
    )
        port map (
      I0 => \^sig_cmd_empty_reg\,
      I1 => ip2bus_mstrd_req,
      I2 => sig_init_reg1,
      I3 => sig_init_reg2,
      I4 => \^sig_cmd_cmplt_reg_reg_0\,
      O => sig_cmd_empty_reg_i_1_n_0
    );
sig_cmd_empty_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_empty_reg_i_1_n_0,
      Q => \^sig_cmd_empty_reg\,
      R => \out\
    );
sig_cmd_full_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => sig_push_cmd_reg,
      Q => sig_cmd2pcc_cmd_valid,
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(3),
      Q => Q(3),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(4),
      Q => Q(4),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(5),
      Q => Q(5),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(6),
      Q => Q(6),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(7),
      Q => Q(7),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(8),
      Q => Q(8),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(9),
      Q => Q(9),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(10),
      Q => Q(10),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(11),
      Q => Q(11),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(12),
      Q => Q(12),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(13),
      Q => Q(13),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(14),
      Q => Q(14),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(15),
      Q => Q(15),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(16),
      Q => Q(16),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(17),
      Q => Q(17),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(18),
      Q => Q(18),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(19),
      Q => Q(19),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(20),
      Q => Q(20),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(21),
      Q => Q(21),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(22),
      Q => Q(22),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(23),
      Q => Q(23),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(24),
      Q => Q(24),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(0),
      Q => Q(0),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(1),
      Q => Q(1),
      R => SR(0)
    );
\sig_cmd_mst_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => \tft_base_addr_reg[0]\(2),
      Q => Q(2),
      R => SR(0)
    );
\sig_cmd_mst_be_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => '1',
      Q => \^sig_cmd_mst_be\(0),
      R => SR(0)
    );
sig_cmd_mstrd_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mstrd_req,
      Q => sig_cmd_mstrd_req,
      R => SR(0)
    );
sig_cmd_type_req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => sig_push_cmd_reg,
      D => ip2bus_mst_type,
      Q => sig_cmd_type_req,
      R => SR(0)
    );
sig_cmdack_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^sig_cmd_empty_reg\,
      I1 => ip2bus_mstrd_req,
      I2 => \^bus2ip_mst_cmdack\,
      I3 => \out\,
      O => sig_cmdack_reg_i_1_n_0
    );
sig_cmdack_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmdack_reg_i_1_n_0,
      Q => \^bus2ip_mst_cmdack\,
      R => '0'
    );
sig_doing_read_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_pcc_taking_command,
      I2 => sig_cmd_mstrd_req,
      I3 => \out\,
      I4 => \^sig_cmd_cmplt_reg_reg_0\,
      O => sig_doing_read_reg_i_1_n_0
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_doing_read_reg_i_1_n_0,
      Q => \^sig_cmd2all_doing_read\,
      R => '0'
    );
sig_error_sh_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_rsc2stat_status_valid,
      I1 => \^sig_status_reg_empty\,
      I2 => \^sig_cmd2all_doing_read\,
      O => \^sig_push_status1_out\
    );
sig_error_sh_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rd_sts_slverr_reg_reg,
      Q => md_error,
      R => \out\
    );
sig_init_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_init_reg1,
      R => \out\
    );
sig_init_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_init_reg1,
      Q => sig_init_reg2,
      R => \out\
    );
sig_int_error_pulse_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2000000"
    )
        port map (
      I0 => \^sig_rdwr2llink_int_err\,
      I1 => \^sig_push_status1_out\,
      I2 => sig_rsc2stat_status(0),
      I3 => sig_llink_busy_reg,
      I4 => \^sig_cmd2all_doing_read\,
      I5 => \out\,
      O => sig_int_error_pulse_reg_i_1_n_0
    );
sig_int_error_pulse_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_int_error_pulse_reg_i_1_n_0,
      Q => \^sig_rdwr2llink_int_err\,
      R => '0'
    );
sig_llink_busy_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_doing_read_reg,
      O => sig_rd_llink_enable
    );
sig_rd_addr_valid_reg_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_cmd2all_doing_read\,
      I1 => sig_pcc2data_calc_error,
      O => sig_rd_addr_valid_reg0
    );
sig_rd_sts_reg_full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => sig_rdwr_reset_reg_reg,
      I1 => \^sig_cmd2all_doing_read\,
      I2 => \^sig_status_reg_empty\,
      I3 => sig_rsc2stat_status_valid,
      O => sig_rd_sts_tag_reg0
    );
sig_status_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFF2F2FFFFF2F2"
    )
        port map (
      I0 => sig_init_reg1,
      I1 => sig_init_reg2,
      I2 => \^sig_cmd_cmplt_reg_reg_0\,
      I3 => \^sig_cmd2all_doing_read\,
      I4 => \^sig_status_reg_empty\,
      I5 => sig_rsc2stat_status_valid,
      O => sig_status_reg_empty_i_1_n_0
    );
sig_status_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_status_reg_empty_i_1_n_0,
      Q => \^sig_status_reg_empty\,
      R => \out\
    );
sig_status_reg_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2222222"
    )
        port map (
      I0 => sig_status_reg_full,
      I1 => \^sig_cmd_cmplt_reg_reg_0\,
      I2 => \^sig_cmd2all_doing_read\,
      I3 => \^sig_status_reg_empty\,
      I4 => sig_rsc2stat_status_valid,
      I5 => \out\,
      O => sig_status_reg_full_i_1_n_0
    );
sig_status_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_status_reg_full_i_1_n_0,
      Q => sig_status_reg_full,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc is
  port (
    sig_pcc2addr_burst : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc2data_cmd_cmplt : out STD_LOGIC;
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_pcc2data_eof : out STD_LOGIC;
    sig_pcc2data_sequential : out STD_LOGIC;
    \sig_btt_cntr_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_sm_ld_calc1_reg_reg_0 : out STD_LOGIC;
    sig_sm_ld_calc1_reg_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    sig_pcc2data_cmd_valid : out STD_LOGIC;
    sig_push_addr_reg1_out : out STD_LOGIC;
    sig_last_dbeat_reg : out STD_LOGIC;
    \sig_next_len_reg_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_next_addr_reg_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    sig_push_cmd_reg : in STD_LOGIC;
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sig_rdc2pcc_cmd_ready : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_addr2stat_cmd_fifo_empty : in STD_LOGIC;
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    sig_cmd_mst_be : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_cmd_mst_be_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc is
  signal \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_addr_cntr_msh_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_first_xfer_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\ : STD_LOGIC;
  signal \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\ : STD_LOGIC;
  signal \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__0_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__1_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry__2_n_7\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_0\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_1\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_2\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_3\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_4\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_5\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_6\ : STD_LOGIC;
  signal \i_/i_/i__carry_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal p_1_in2_in : STD_LOGIC;
  signal sig_addr_cntr_incr_imreg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal sig_adjusted_addr_incr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal sig_btt_cntr : STD_LOGIC_VECTOR ( 11 to 11 );
  signal sig_btt_cntr0 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \sig_btt_cntr0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__0_n_3\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_n_1\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_n_2\ : STD_LOGIC;
  signal \sig_btt_cntr0_carry__1_n_3\ : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_0 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_1 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_2 : STD_LOGIC;
  signal sig_btt_cntr0_carry_n_3 : STD_LOGIC;
  signal \sig_btt_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[10]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[11]_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[8]_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_cntr[9]_i_1_n_0\ : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_n_1 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_n_2 : STD_LOGIC;
  signal sig_btt_eq_b2mbaa1_carry_n_3 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1 : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sig_btt_lt_b2mbaa1_carry__0_n_3\ : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_10_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_1_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_2_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_3_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_4_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_5_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_6_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_7_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_8_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_i_9_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_0 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_1 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_2 : STD_LOGIC;
  signal sig_btt_lt_b2mbaa1_carry_n_3 : STD_LOGIC;
  signal sig_btt_residue_slice : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \sig_byte_change_minus1/i__n_0\ : STD_LOGIC;
  signal sig_calc_error_pushed_i_1_n_0 : STD_LOGIC;
  signal sig_calc_error_reg_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2addr_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2data_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_i_1_n_0 : STD_LOGIC;
  signal sig_cmd2dre_valid_reg_n_0 : STD_LOGIC;
  signal sig_first_xfer : STD_LOGIC;
  signal sig_input_burst_type_reg : STD_LOGIC;
  signal sig_input_burst_type_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_eof_reg : STD_LOGIC;
  signal sig_input_eof_reg_i_1_n_0 : STD_LOGIC;
  signal sig_input_reg_empty : STD_LOGIC;
  signal sig_input_reg_empty_i_1_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_7_n_0 : STD_LOGIC;
  signal sig_ld_xfer_reg : STD_LOGIC;
  signal sig_ld_xfer_reg_i_1_n_0 : STD_LOGIC;
  signal \^sig_next_len_reg_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_parent_done_i_1_n_0 : STD_LOGIC;
  signal sig_pcc2addr_cmd_valid : STD_LOGIC;
  signal sig_pcc2all_calc_err : STD_LOGIC;
  signal \^sig_pcc2data_cmd_valid\ : STD_LOGIC;
  signal sig_predict_addr_lsh_im3_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sig_push_xfer_reg15_out : STD_LOGIC;
  signal sig_sm_halt_ns : STD_LOGIC;
  signal sig_sm_halt_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg : STD_LOGIC;
  signal sig_sm_ld_calc1_reg_ns : STD_LOGIC;
  signal \^sig_sm_ld_calc1_reg_reg_0\ : STD_LOGIC;
  signal \^sig_sm_ld_calc1_reg_reg_1\ : STD_LOGIC;
  signal sig_sm_ld_calc2_reg : STD_LOGIC;
  signal sig_sm_ld_calc2_reg_ns : STD_LOGIC;
  signal sig_sm_pop_input_reg : STD_LOGIC;
  signal sig_sm_pop_input_reg_ns : STD_LOGIC;
  signal sig_xfer_addr_reg0 : STD_LOGIC;
  signal sig_xfer_address : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal sig_xfer_cmd_cmplt_reg_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_eof_reg0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_1_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_2_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_3_n_0 : STD_LOGIC;
  signal sig_xfer_is_seq_reg_i_4_n_0 : STD_LOGIC;
  signal \sig_xfer_len_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \sig_xfer_len_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal sig_xfer_reg_empty : STD_LOGIC;
  signal sig_xfer_reg_empty_i_3_n_0 : STD_LOGIC;
  signal \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_sig_btt_cntr0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sig_btt_eq_b2mbaa1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sig_btt_lt_b2mbaa1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sig_btt_lt_b2mbaa1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[0]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_sequential_sig_pcc_sm_state[1]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sig_btt_cntr[11]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of sig_btt_eq_b2mbaa1_carry_i_6 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sig_btt_lt_b2mbaa1_carry__0_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of sig_btt_lt_b2mbaa1_carry_i_10 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of sig_sm_halt_reg_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of sig_sm_ld_calc2_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of sig_sm_pop_input_reg_i_1 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of sig_xfer_cmd_cmplt_reg_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of sig_xfer_eof_reg_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of sig_xfer_is_seq_reg_i_1 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sig_xfer_len_reg[6]_i_1\ : label is "soft_lutpair30";
begin
  \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\ <= \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\;
  \sig_next_len_reg_reg[7]\(7 downto 0) <= \^sig_next_len_reg_reg[7]\(7 downto 0);
  sig_pcc2data_cmd_valid <= \^sig_pcc2data_cmd_valid\;
  sig_sm_ld_calc1_reg_reg_0 <= \^sig_sm_ld_calc1_reg_reg_0\;
  sig_sm_ld_calc1_reg_reg_1 <= \^sig_sm_ld_calc1_reg_reg_1\;
\FSM_sequential_sig_pcc_sm_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00330033B833B8FF"
    )
        port map (
      I0 => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\,
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(0),
      I2 => sig_push_xfer_reg15_out,
      I3 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2),
      I4 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I5 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(1),
      O => D(0)
    );
\FSM_sequential_sig_pcc_sm_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^sig_sm_ld_calc1_reg_reg_0\,
      I1 => \^sig_sm_ld_calc1_reg_reg_1\,
      O => \FSM_sequential_sig_pcc_sm_state[0]_i_2_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      O => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB080808"
    )
        port map (
      I0 => sig_btt_residue_slice(0),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_btt_cntr(11),
      I3 => sig_first_xfer,
      I4 => sig_xfer_address(0),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => sig_btt_residue_slice(10),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_btt_cntr(11),
      I3 => sig_first_xfer,
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => sig_xfer_address(10),
      I1 => sig_xfer_address(9),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BB"
    )
        port map (
      I0 => sig_btt_cntr(11),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_2_n_0\,
      I3 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sig_xfer_address(9),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_3_n_0\,
      I2 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I3 => sig_xfer_address(8),
      I4 => sig_xfer_address(10),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_xfer_address(5),
      I1 => sig_xfer_address(4),
      I2 => sig_xfer_address(7),
      I3 => sig_xfer_address(6),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_3_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08FBFB0808080808"
    )
        port map (
      I0 => sig_btt_residue_slice(1),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_btt_cntr(11),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(0),
      I5 => sig_first_xfer,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF222800002228"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(0),
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0\,
      I5 => sig_btt_residue_slice(2),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1,
      I1 => sig_btt_cntr(11),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(3),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_xfer_address(0),
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(2),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(4),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => sig_xfer_address(4),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(0),
      I4 => sig_xfer_address(3),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(5),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => sig_xfer_address(5),
      I1 => sig_xfer_address(3),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(2),
      I5 => sig_xfer_address(4),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(6),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => sig_xfer_address(6),
      I1 => sig_xfer_address(4),
      I2 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I3 => sig_xfer_address(5),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888F088"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_btt_residue_slice(7),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_btt_cntr(11),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555556"
    )
        port map (
      I0 => sig_xfer_address(7),
      I1 => sig_xfer_address(5),
      I2 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I3 => sig_xfer_address(4),
      I4 => sig_xfer_address(6),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(8),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555556"
    )
        port map (
      I0 => sig_xfer_address(8),
      I1 => sig_xfer_address(5),
      I2 => sig_xfer_address(4),
      I3 => sig_xfer_address(7),
      I4 => sig_xfer_address(6),
      I5 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090FF9090900090"
    )
        port map (
      I0 => sig_xfer_address(9),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_btt_cntr(11),
      I5 => sig_btt_residue_slice(9),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sig_xfer_address(5),
      I1 => sig_xfer_address(4),
      I2 => sig_xfer_address(7),
      I3 => sig_xfer_address(6),
      I4 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I5 => sig_xfer_address(8),
      O => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[0]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[1]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_incr_imreg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc1_reg,
      D => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_1_n_0\,
      Q => sig_addr_cntr_incr_imreg(9),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(0)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(3),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      O => p_1_in(10)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(4),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      O => p_1_in(11)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(5),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      O => p_1_in(12)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(6),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      O => p_1_in(13)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(7),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      O => p_1_in(14)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(8),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => p_0_in,
      O => p_1_in(15)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(1)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(2)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(3)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(4)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(5)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => p_1_in(6)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(0),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      O => p_1_in(7)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(1),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      O => p_1_in(8)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(2),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      O => p_1_in(9)
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(0),
      Q => sig_xfer_address(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(10),
      Q => sig_xfer_address(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(11),
      Q => sig_xfer_address(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(12),
      Q => sig_xfer_address(12),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(13),
      Q => sig_xfer_address(13),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(14),
      Q => sig_xfer_address(14),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(15),
      Q => p_1_in2_in,
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(1),
      Q => sig_xfer_address(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(2),
      Q => sig_xfer_address(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(3),
      Q => sig_xfer_address(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(4),
      Q => sig_xfer_address(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(5),
      Q => sig_xfer_address(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(6),
      Q => sig_xfer_address(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(7),
      Q => sig_xfer_address(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(8),
      Q => sig_xfer_address(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_lsh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => p_1_in(9),
      Q => sig_xfer_address(9),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I1 => p_0_in,
      I2 => p_1_in2_in,
      I3 => sig_input_burst_type_reg,
      I4 => sig_ld_xfer_reg,
      I5 => sig_xfer_reg_empty,
      O => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry_n_7\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__1_n_5\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__1_n_4\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__2_n_7\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__2_n_6\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__2_n_5\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__2_n_4\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry_n_6\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry_n_5\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry_n_4\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__0_n_7\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__0_n_6\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__0_n_5\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__0_n_4\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__1_n_7\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      R => \out\
    );
\GEN_ADDR_32.sig_addr_cntr_msh_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \GEN_ADDR_32.sig_addr_cntr_msh[0]_i_1_n_0\,
      D => \i_/i_/i__carry__1_n_6\,
      Q => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0808FB08"
    )
        port map (
      I0 => sig_btt_residue_slice(10),
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_btt_cntr(11),
      I3 => sig_first_xfer,
      I4 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[10]_i_2_n_0\,
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9090FF9090900090"
    )
        port map (
      I0 => sig_xfer_address(9),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      I2 => sig_first_xfer,
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_btt_cntr(11),
      I5 => sig_btt_residue_slice(9),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(8),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[3]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(3),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77747777BBB88888"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[2]_i_2_n_0\,
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_first_xfer,
      I5 => sig_xfer_address(2),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DDDFDD8F888088"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_xfer_address(0),
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_btt_residue_slice(1),
      I5 => sig_xfer_address(1),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45753000"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => sig_btt_cntr(11),
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_residue_slice(0),
      I4 => sig_xfer_address(0),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8888F088"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[7]_i_2_n_0\,
      I2 => sig_btt_residue_slice(7),
      I3 => sig_btt_lt_b2mbaa1,
      I4 => sig_btt_cntr(11),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[6]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(6),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[5]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(5),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F88808"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[4]_i_2_n_0\,
      I2 => sig_btt_lt_b2mbaa1,
      I3 => sig_btt_cntr(11),
      I4 => sig_btt_residue_slice(4),
      O => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(0),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(10),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[10]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0\,
      CO(3 downto 2) => \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[10]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sig_adjusted_addr_incr(10 downto 8),
      S(3) => '0',
      S(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_2_n_0\,
      S(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_3_n_0\,
      S(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[10]_i_4_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(1),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(2),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(3),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sig_xfer_address(2 downto 0),
      O(3 downto 0) => sig_adjusted_addr_incr(3 downto 0),
      S(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(4),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(5),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(6),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(7),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[3]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_adjusted_addr_incr(7 downto 4),
      S(3) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_adjusted_addr_incr_reg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(8),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\,
      R => \out\
    );
\GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_adjusted_addr_incr(9),
      Q => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9]\,
      R => \out\
    );
\GEN_ADDR_32.sig_first_xfer_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000EEEEEEE"
    )
        port map (
      I0 => sig_first_xfer,
      I1 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I2 => sig_input_burst_type_reg,
      I3 => sig_ld_xfer_reg,
      I4 => sig_xfer_reg_empty,
      I5 => \out\,
      O => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\
    );
\GEN_ADDR_32.sig_first_xfer_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \GEN_ADDR_32.sig_first_xfer_i_1_n_0\,
      Q => sig_first_xfer,
      R => '0'
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(11),
      I1 => sig_addr_cntr_incr_imreg(11),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(10),
      I1 => sig_addr_cntr_incr_imreg(10),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(9),
      I1 => sig_addr_cntr_incr_imreg(9),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(8),
      I1 => sig_addr_cntr_incr_imreg(8),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_1_in2_in,
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(14),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(13),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_xfer_address(12),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_addr_cntr_incr_imreg(3),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(2),
      I1 => sig_addr_cntr_incr_imreg(2),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(1),
      I1 => sig_addr_cntr_incr_imreg(1),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(0),
      I1 => sig_addr_cntr_incr_imreg(0),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(7),
      I1 => sig_addr_cntr_incr_imreg(7),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(6),
      I1 => sig_addr_cntr_incr_imreg(6),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(5),
      I1 => sig_addr_cntr_incr_imreg(5),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sig_xfer_address(4),
      I1 => sig_addr_cntr_incr_imreg(4),
      O => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(0),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[0]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(10),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[10]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(11),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[11]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_xfer_address(11 downto 8),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(11 downto 8),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[11]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(12),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[12]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(13),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[13]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(14),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[14]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(15),
      Q => p_0_in,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[11]_i_1_n_0\,
      CO(3) => \NLW_GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(15 downto 12),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[15]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(1),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[1]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(2),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[2]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(3),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[3]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_xfer_address(3 downto 0),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(3 downto 0),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[3]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(4),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[4]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(5),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[5]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(6),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[6]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(7),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[7]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[3]_i_1_n_0\,
      CO(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_0\,
      CO(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_1\,
      CO(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_2\,
      CO(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_xfer_address(7 downto 4),
      O(3 downto 0) => sig_predict_addr_lsh_im3_in(7 downto 4),
      S(3) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_2_n_0\,
      S(2) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_3_n_0\,
      S(1) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_4_n_0\,
      S(0) => \GEN_ADDR_32.sig_predict_addr_lsh_imreg[7]_i_5_n_0\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(8),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[8]\,
      R => \out\
    );
\GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_sm_ld_calc2_reg,
      D => sig_predict_addr_lsh_im3_in(9),
      Q => \GEN_ADDR_32.sig_predict_addr_lsh_imreg_reg_n_0_[9]\,
      R => \out\
    );
\i_/i_/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_/i_/i__carry_n_0\,
      CO(2) => \i_/i_/i__carry_n_1\,
      CO(1) => \i_/i_/i__carry_n_2\,
      CO(0) => \i_/i_/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1_n_0\,
      O(3) => \i_/i_/i__carry_n_4\,
      O(2) => \i_/i_/i__carry_n_5\,
      O(1) => \i_/i_/i__carry_n_6\,
      O(0) => \i_/i_/i__carry_n_7\,
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\i_/i_/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry_n_0\,
      CO(3) => \i_/i_/i__carry__0_n_0\,
      CO(2) => \i_/i_/i__carry__0_n_1\,
      CO(1) => \i_/i_/i__carry__0_n_2\,
      CO(0) => \i_/i_/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__0_n_4\,
      O(2) => \i_/i_/i__carry__0_n_5\,
      O(1) => \i_/i_/i__carry__0_n_6\,
      O(0) => \i_/i_/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\i_/i_/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__0_n_0\,
      CO(3) => \i_/i_/i__carry__1_n_0\,
      CO(2) => \i_/i_/i__carry__1_n_1\,
      CO(1) => \i_/i_/i__carry__1_n_2\,
      CO(0) => \i_/i_/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__1_n_4\,
      O(2) => \i_/i_/i__carry__1_n_5\,
      O(1) => \i_/i_/i__carry__1_n_6\,
      O(0) => \i_/i_/i__carry__1_n_7\,
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\i_/i_/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_/i_/i__carry__1_n_0\,
      CO(3) => \NLW_i_/i_/i__carry__2_CO_UNCONNECTED\(3),
      CO(2) => \i_/i_/i__carry__2_n_1\,
      CO(1) => \i_/i_/i__carry__2_n_2\,
      CO(0) => \i_/i_/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_/i_/i__carry__2_n_4\,
      O(2) => \i_/i_/i__carry__2_n_5\,
      O(1) => \i_/i_/i__carry__2_n_6\,
      O(0) => \i_/i_/i__carry__2_n_7\,
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(16),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(15),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(14),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(13),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(20),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(19),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(18),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(17),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(24),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(23),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(22),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(21),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      O => \i__carry__2_i_4_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(9),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(12),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(11),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => Q(10),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      I5 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555C555555"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      I1 => Q(9),
      I2 => sig_sm_halt_reg,
      I3 => sig_input_reg_empty,
      I4 => sig_cmd2pcc_cmd_valid,
      I5 => sig_pcc2all_calc_err,
      O => \i__carry_i_5_n_0\
    );
sig_btt_cntr0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_cntr0_carry_n_0,
      CO(2) => sig_btt_cntr0_carry_n_1,
      CO(1) => sig_btt_cntr0_carry_n_2,
      CO(0) => sig_btt_cntr0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => sig_btt_residue_slice(3 downto 0),
      O(3) => \sig_btt_cntr_reg[7]_0\(0),
      O(2 downto 0) => sig_btt_cntr0(2 downto 0),
      S(3) => sig_btt_cntr0_carry_i_1_n_0,
      S(2) => sig_btt_cntr0_carry_i_2_n_0,
      S(1) => sig_btt_cntr0_carry_i_3_n_0,
      S(0) => sig_btt_cntr0_carry_i_4_n_0
    );
\sig_btt_cntr0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_cntr0_carry_n_0,
      CO(3) => \sig_btt_cntr0_carry__0_n_0\,
      CO(2) => \sig_btt_cntr0_carry__0_n_1\,
      CO(1) => \sig_btt_cntr0_carry__0_n_2\,
      CO(0) => \sig_btt_cntr0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => sig_btt_residue_slice(7 downto 4),
      O(3) => \sig_btt_cntr_reg[7]_0\(1),
      O(2 downto 0) => sig_btt_cntr0(6 downto 4),
      S(3) => \sig_btt_cntr0_carry__0_i_1_n_0\,
      S(2) => \sig_btt_cntr0_carry__0_i_2_n_0\,
      S(1) => \sig_btt_cntr0_carry__0_i_3_n_0\,
      S(0) => \sig_btt_cntr0_carry__0_i_4_n_0\
    );
\sig_btt_cntr0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(7),
      I1 => sig_addr_cntr_incr_imreg(7),
      O => \sig_btt_cntr0_carry__0_i_1_n_0\
    );
\sig_btt_cntr0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(6),
      I1 => sig_addr_cntr_incr_imreg(6),
      O => \sig_btt_cntr0_carry__0_i_2_n_0\
    );
\sig_btt_cntr0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(5),
      I1 => sig_addr_cntr_incr_imreg(5),
      O => \sig_btt_cntr0_carry__0_i_3_n_0\
    );
\sig_btt_cntr0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(4),
      I1 => sig_addr_cntr_incr_imreg(4),
      O => \sig_btt_cntr0_carry__0_i_4_n_0\
    );
\sig_btt_cntr0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sig_btt_cntr0_carry__0_n_0\,
      CO(3) => \NLW_sig_btt_cntr0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \sig_btt_cntr0_carry__1_n_1\,
      CO(1) => \sig_btt_cntr0_carry__1_n_2\,
      CO(0) => \sig_btt_cntr0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sig_btt_residue_slice(10 downto 8),
      O(3 downto 0) => sig_btt_cntr0(11 downto 8),
      S(3) => \sig_btt_cntr0_carry__1_i_1_n_0\,
      S(2) => \sig_btt_cntr0_carry__1_i_2_n_0\,
      S(1) => \sig_btt_cntr0_carry__1_i_3_n_0\,
      S(0) => \sig_btt_cntr0_carry__1_i_4_n_0\
    );
\sig_btt_cntr0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_cntr(11),
      I1 => sig_addr_cntr_incr_imreg(11),
      O => \sig_btt_cntr0_carry__1_i_1_n_0\
    );
\sig_btt_cntr0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(10),
      I1 => sig_addr_cntr_incr_imreg(10),
      O => \sig_btt_cntr0_carry__1_i_2_n_0\
    );
\sig_btt_cntr0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(9),
      I1 => sig_addr_cntr_incr_imreg(9),
      O => \sig_btt_cntr0_carry__1_i_3_n_0\
    );
\sig_btt_cntr0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(8),
      I1 => sig_addr_cntr_incr_imreg(8),
      O => \sig_btt_cntr0_carry__1_i_4_n_0\
    );
sig_btt_cntr0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_addr_cntr_incr_imreg(3),
      O => sig_btt_cntr0_carry_i_1_n_0
    );
sig_btt_cntr0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(2),
      I1 => sig_addr_cntr_incr_imreg(2),
      O => sig_btt_cntr0_carry_i_2_n_0
    );
sig_btt_cntr0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(1),
      I1 => sig_addr_cntr_incr_imreg(1),
      O => sig_btt_cntr0_carry_i_3_n_0
    );
sig_btt_cntr0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => sig_btt_residue_slice(0),
      I1 => sig_addr_cntr_incr_imreg(0),
      O => sig_btt_cntr0_carry_i_4_n_0
    );
\sig_btt_cntr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(0),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[0]_i_1_n_0\
    );
\sig_btt_cntr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(10),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[10]_i_1_n_0\
    );
\sig_btt_cntr[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_input_burst_type_reg,
      O => \sig_btt_cntr[11]_i_1_n_0\
    );
\sig_btt_cntr[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(11),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[11]_i_2_n_0\
    );
\sig_btt_cntr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(1),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[1]_i_1_n_0\
    );
\sig_btt_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(2),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[2]_i_1_n_0\
    );
\sig_btt_cntr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(4),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[4]_i_1_n_0\
    );
\sig_btt_cntr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(5),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[5]_i_1_n_0\
    );
\sig_btt_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(6),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[6]_i_1_n_0\
    );
\sig_btt_cntr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(8),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[8]_i_1_n_0\
    );
\sig_btt_cntr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8AAA"
    )
        port map (
      I0 => sig_btt_cntr0(9),
      I1 => sig_sm_halt_reg,
      I2 => sig_input_reg_empty,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_pcc2all_calc_err,
      O => \sig_btt_cntr[9]_i_1_n_0\
    );
\sig_btt_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[0]_i_1_n_0\,
      Q => sig_btt_residue_slice(0),
      R => \out\
    );
\sig_btt_cntr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[10]_i_1_n_0\,
      Q => sig_btt_residue_slice(10),
      R => \out\
    );
\sig_btt_cntr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[11]_i_2_n_0\,
      Q => sig_btt_cntr(11),
      R => \out\
    );
\sig_btt_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[1]_i_1_n_0\,
      Q => sig_btt_residue_slice(1),
      R => \out\
    );
\sig_btt_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[2]_i_1_n_0\,
      Q => sig_btt_residue_slice(2),
      R => \out\
    );
\sig_btt_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_cmd_mst_be_reg[3]\(0),
      Q => sig_btt_residue_slice(3),
      R => \out\
    );
\sig_btt_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[4]_i_1_n_0\,
      Q => sig_btt_residue_slice(4),
      R => \out\
    );
\sig_btt_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[5]_i_1_n_0\,
      Q => sig_btt_residue_slice(5),
      R => \out\
    );
\sig_btt_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[6]_i_1_n_0\,
      Q => sig_btt_residue_slice(6),
      R => \out\
    );
\sig_btt_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_cmd_mst_be_reg[3]\(1),
      Q => sig_btt_residue_slice(7),
      R => \out\
    );
\sig_btt_cntr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[8]_i_1_n_0\,
      Q => sig_btt_residue_slice(8),
      R => \out\
    );
\sig_btt_cntr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_btt_cntr[11]_i_1_n_0\,
      D => \sig_btt_cntr[9]_i_1_n_0\,
      Q => sig_btt_residue_slice(9),
      R => \out\
    );
sig_btt_eq_b2mbaa1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_eq_b2mbaa1,
      CO(2) => sig_btt_eq_b2mbaa1_carry_n_1,
      CO(1) => sig_btt_eq_b2mbaa1_carry_n_2,
      CO(0) => sig_btt_eq_b2mbaa1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_sig_btt_eq_b2mbaa1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_eq_b2mbaa1_carry_i_1_n_0,
      S(2) => sig_btt_eq_b2mbaa1_carry_i_2_n_0,
      S(1) => sig_btt_eq_b2mbaa1_carry_i_3_n_0,
      S(0) => sig_btt_eq_b2mbaa1_carry_i_4_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"21428408"
    )
        port map (
      I0 => sig_btt_residue_slice(9),
      I1 => sig_btt_residue_slice(10),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      I3 => sig_xfer_address(9),
      I4 => sig_xfer_address(10),
      O => sig_btt_eq_b2mbaa1_carry_i_1_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => sig_btt_eq_b2mbaa1_carry_i_5_n_0,
      I1 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[8]_i_2_n_0\,
      I2 => sig_btt_residue_slice(8),
      O => sig_btt_eq_b2mbaa1_carry_i_2_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001144014400001"
    )
        port map (
      I0 => sig_btt_eq_b2mbaa1_carry_i_6_n_0,
      I1 => sig_btt_residue_slice(4),
      I2 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I3 => sig_xfer_address(4),
      I4 => sig_btt_residue_slice(5),
      I5 => sig_xfer_address(5),
      O => sig_btt_eq_b2mbaa1_carry_i_3_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0208041020804001"
    )
        port map (
      I0 => sig_btt_residue_slice(0),
      I1 => sig_btt_residue_slice(1),
      I2 => sig_xfer_address(2),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(0),
      I5 => sig_btt_residue_slice(2),
      O => sig_btt_eq_b2mbaa1_carry_i_4_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06606009"
    )
        port map (
      I0 => sig_xfer_address(7),
      I1 => sig_btt_residue_slice(7),
      I2 => sig_xfer_address(6),
      I3 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I4 => sig_btt_residue_slice(6),
      O => sig_btt_eq_b2mbaa1_carry_i_5_n_0
    );
sig_btt_eq_b2mbaa1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA95556"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(0),
      I4 => sig_xfer_address(3),
      O => sig_btt_eq_b2mbaa1_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sig_btt_lt_b2mbaa1_carry_n_0,
      CO(2) => sig_btt_lt_b2mbaa1_carry_n_1,
      CO(1) => sig_btt_lt_b2mbaa1_carry_n_2,
      CO(0) => sig_btt_lt_b2mbaa1_carry_n_3,
      CYINIT => '0',
      DI(3) => sig_btt_lt_b2mbaa1_carry_i_1_n_0,
      DI(2) => sig_btt_lt_b2mbaa1_carry_i_2_n_0,
      DI(1) => sig_btt_lt_b2mbaa1_carry_i_3_n_0,
      DI(0) => sig_btt_lt_b2mbaa1_carry_i_4_n_0,
      O(3 downto 0) => NLW_sig_btt_lt_b2mbaa1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sig_btt_lt_b2mbaa1_carry_i_5_n_0,
      S(2) => sig_btt_lt_b2mbaa1_carry_i_6_n_0,
      S(1) => sig_btt_lt_b2mbaa1_carry_i_7_n_0,
      S(0) => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
\sig_btt_lt_b2mbaa1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sig_btt_lt_b2mbaa1_carry_n_0,
      CO(3 downto 2) => \NLW_sig_btt_lt_b2mbaa1_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => sig_btt_lt_b2mbaa1,
      CO(0) => \sig_btt_lt_b2mbaa1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \sig_btt_lt_b2mbaa1_carry__0_i_1_n_0\,
      DI(0) => \sig_btt_lt_b2mbaa1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_sig_btt_lt_b2mbaa1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \sig_btt_lt_b2mbaa1_carry__0_i_3_n_0\,
      S(0) => \sig_btt_lt_b2mbaa1_carry__0_i_4_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1075"
    )
        port map (
      I0 => sig_xfer_address(10),
      I1 => sig_xfer_address(9),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      I3 => sig_btt_residue_slice(10),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_1_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"004D41F3"
    )
        port map (
      I0 => sig_btt_residue_slice(8),
      I1 => \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\,
      I2 => sig_xfer_address(8),
      I3 => sig_btt_residue_slice(9),
      I4 => sig_xfer_address(9),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_2_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"658A"
    )
        port map (
      I0 => sig_xfer_address(10),
      I1 => sig_xfer_address(9),
      I2 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[9]_i_2_n_0\,
      I3 => sig_btt_residue_slice(10),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_3_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"60060960"
    )
        port map (
      I0 => sig_xfer_address(9),
      I1 => sig_btt_residue_slice(9),
      I2 => sig_xfer_address(8),
      I3 => \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\,
      I4 => sig_btt_residue_slice(8),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_4_n_0\
    );
\sig_btt_lt_b2mbaa1_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I1 => sig_xfer_address(6),
      I2 => sig_xfer_address(7),
      I3 => sig_xfer_address(4),
      I4 => sig_xfer_address(5),
      O => \sig_btt_lt_b2mbaa1_carry__0_i_5_n_0\
    );
sig_btt_lt_b2mbaa1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0154157C"
    )
        port map (
      I0 => sig_btt_residue_slice(7),
      I1 => sig_xfer_address(6),
      I2 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I3 => sig_xfer_address(7),
      I4 => sig_btt_residue_slice(6),
      O => sig_btt_lt_b2mbaa1_carry_i_1_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_xfer_address(0),
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(2),
      O => sig_btt_lt_b2mbaa1_carry_i_10_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0154157C"
    )
        port map (
      I0 => sig_btt_residue_slice(5),
      I1 => sig_xfer_address(4),
      I2 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I3 => sig_xfer_address(5),
      I4 => sig_btt_residue_slice(4),
      O => sig_btt_lt_b2mbaa1_carry_i_2_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000155541115777C"
    )
        port map (
      I0 => sig_btt_residue_slice(3),
      I1 => sig_xfer_address(2),
      I2 => sig_xfer_address(1),
      I3 => sig_xfer_address(0),
      I4 => sig_xfer_address(3),
      I5 => sig_btt_residue_slice(2),
      O => sig_btt_lt_b2mbaa1_carry_i_3_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1474"
    )
        port map (
      I0 => sig_btt_residue_slice(1),
      I1 => sig_xfer_address(1),
      I2 => sig_xfer_address(0),
      I3 => sig_btt_residue_slice(0),
      O => sig_btt_lt_b2mbaa1_carry_i_4_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06606009"
    )
        port map (
      I0 => sig_xfer_address(7),
      I1 => sig_btt_residue_slice(7),
      I2 => sig_xfer_address(6),
      I3 => sig_btt_lt_b2mbaa1_carry_i_9_n_0,
      I4 => sig_btt_residue_slice(6),
      O => sig_btt_lt_b2mbaa1_carry_i_5_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01686801"
    )
        port map (
      I0 => sig_btt_residue_slice(4),
      I1 => sig_btt_lt_b2mbaa1_carry_i_10_n_0,
      I2 => sig_xfer_address(4),
      I3 => sig_btt_residue_slice(5),
      I4 => sig_xfer_address(5),
      O => sig_btt_lt_b2mbaa1_carry_i_6_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606066060606009"
    )
        port map (
      I0 => sig_xfer_address(3),
      I1 => sig_btt_residue_slice(3),
      I2 => sig_xfer_address(2),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(0),
      I5 => sig_btt_residue_slice(2),
      O => sig_btt_lt_b2mbaa1_carry_i_7_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6009"
    )
        port map (
      I0 => sig_xfer_address(1),
      I1 => sig_btt_residue_slice(1),
      I2 => sig_btt_residue_slice(0),
      I3 => sig_xfer_address(0),
      O => sig_btt_lt_b2mbaa1_carry_i_8_n_0
    );
sig_btt_lt_b2mbaa1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => sig_xfer_address(5),
      I1 => sig_xfer_address(3),
      I2 => sig_xfer_address(0),
      I3 => sig_xfer_address(1),
      I4 => sig_xfer_address(2),
      I5 => sig_xfer_address(4),
      O => sig_btt_lt_b2mbaa1_carry_i_9_n_0
    );
\sig_byte_change_minus1/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      O => \sig_byte_change_minus1/i__n_0\
    );
sig_calc_error_pushed_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => \^sig_sm_ld_calc1_reg_reg_1\,
      O => sig_calc_error_pushed_i_1_n_0
    );
sig_calc_error_pushed_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_calc_error_pushed_i_1_n_0,
      Q => \^sig_sm_ld_calc1_reg_reg_1\,
      R => \out\
    );
sig_calc_error_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCDCCC"
    )
        port map (
      I0 => sig_cmd_mst_be(0),
      I1 => sig_pcc2all_calc_err,
      I2 => sig_cmd2pcc_cmd_valid,
      I3 => sig_input_reg_empty,
      I4 => sig_sm_halt_reg,
      O => sig_calc_error_reg_i_1_n_0
    );
sig_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_calc_error_reg_i_1_n_0,
      Q => sig_pcc2all_calc_err,
      R => \out\
    );
sig_cmd2addr_valid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002EEEEEEE"
    )
        port map (
      I0 => sig_push_xfer_reg15_out,
      I1 => sig_pcc2addr_cmd_valid,
      I2 => sig_cmd2all_doing_read,
      I3 => sig_addr2stat_cmd_fifo_empty,
      I4 => sig_llink2rd_allow_addr_req,
      I5 => \out\,
      O => sig_cmd2addr_valid_i_1_n_0
    );
sig_cmd2addr_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2addr_valid_i_1_n_0,
      Q => sig_pcc2addr_cmd_valid,
      R => '0'
    );
sig_cmd2data_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => \^sig_pcc2data_cmd_valid\,
      I1 => sig_xfer_reg_empty,
      I2 => sig_ld_xfer_reg,
      I3 => sig_rdc2pcc_cmd_ready,
      I4 => \out\,
      O => sig_cmd2data_valid_i_1_n_0
    );
sig_cmd2data_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2data_valid_i_1_n_0,
      Q => \^sig_pcc2data_cmd_valid\,
      R => '0'
    );
sig_cmd2dre_valid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      I2 => sig_first_xfer,
      I3 => sig_cmd2dre_valid_reg_n_0,
      I4 => \out\,
      O => sig_cmd2dre_valid_i_1_n_0
    );
sig_cmd2dre_valid_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2dre_valid_i_1_n_0,
      Q => sig_cmd2dre_valid_reg_n_0,
      R => '0'
    );
sig_cmd_full_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAABAAAAAA"
    )
        port map (
      I0 => sig_cmd_reset_reg_reg,
      I1 => sig_push_cmd_reg,
      I2 => \^sig_sm_ld_calc1_reg_reg_1\,
      I3 => sig_cmd2pcc_cmd_valid,
      I4 => sig_input_reg_empty,
      I5 => sig_sm_halt_reg,
      O => SR(0)
    );
sig_doing_read_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \^sig_sm_ld_calc1_reg_reg_1\,
      I1 => sig_cmd2pcc_cmd_valid,
      I2 => sig_input_reg_empty,
      I3 => sig_sm_halt_reg,
      O => sig_pcc_taking_command
    );
sig_input_burst_type_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_burst_type_reg,
      I1 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I2 => \out\,
      I3 => sig_sm_pop_input_reg,
      I4 => \^sig_sm_ld_calc1_reg_reg_1\,
      O => sig_input_burst_type_reg_i_1_n_0
    );
sig_input_burst_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_burst_type_reg_i_1_n_0,
      Q => sig_input_burst_type_reg,
      R => '0'
    );
sig_input_eof_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000000E"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I2 => \out\,
      I3 => sig_sm_pop_input_reg,
      I4 => \^sig_sm_ld_calc1_reg_reg_1\,
      O => sig_input_eof_reg_i_1_n_0
    );
sig_input_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_eof_reg_i_1_n_0,
      Q => sig_input_eof_reg,
      R => '0'
    );
sig_input_reg_empty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF2"
    )
        port map (
      I0 => sig_input_reg_empty,
      I1 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I2 => \out\,
      I3 => sig_sm_pop_input_reg,
      I4 => \^sig_sm_ld_calc1_reg_reg_1\,
      O => sig_input_reg_empty_i_1_n_0
    );
sig_input_reg_empty_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_input_reg_empty_i_1_n_0,
      Q => sig_input_reg_empty,
      R => '0'
    );
sig_last_dbeat_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sig_next_len_reg_reg[7]\(0),
      I1 => \^sig_next_len_reg_reg[7]\(6),
      I2 => \^sig_next_len_reg_reg[7]\(2),
      I3 => sig_last_dbeat_i_7_n_0,
      O => sig_last_dbeat_reg
    );
sig_last_dbeat_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^sig_next_len_reg_reg[7]\(4),
      I1 => \^sig_next_len_reg_reg[7]\(3),
      I2 => \^sig_next_len_reg_reg[7]\(5),
      I3 => \^sig_next_len_reg_reg[7]\(1),
      O => sig_last_dbeat_i_7_n_0
    );
sig_ld_xfer_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FF4040"
    )
        port map (
      I0 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2),
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(0),
      I2 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(1),
      I3 => sig_xfer_reg_empty,
      I4 => sig_ld_xfer_reg,
      I5 => \out\,
      O => sig_ld_xfer_reg_i_1_n_0
    );
sig_ld_xfer_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_ld_xfer_reg_i_1_n_0,
      Q => sig_ld_xfer_reg,
      R => '0'
    );
sig_parent_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002AEA"
    )
        port map (
      I0 => \^sig_sm_ld_calc1_reg_reg_0\,
      I1 => sig_ld_xfer_reg,
      I2 => sig_xfer_reg_empty,
      I3 => sig_xfer_is_seq_reg_i_1_n_0,
      I4 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I5 => \out\,
      O => sig_parent_done_i_1_n_0
    );
sig_parent_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_parent_done_i_1_n_0,
      Q => \^sig_sm_ld_calc1_reg_reg_0\,
      R => '0'
    );
sig_rd_addr_valid_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sig_pcc2addr_cmd_valid,
      I1 => sig_cmd2all_doing_read,
      I2 => sig_addr2stat_cmd_fifo_empty,
      I3 => sig_llink2rd_allow_addr_req,
      O => sig_push_addr_reg1_out
    );
sig_sm_halt_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3803"
    )
        port map (
      I0 => \^sig_sm_ld_calc1_reg_reg_1\,
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(0),
      I2 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(1),
      I3 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2),
      O => sig_sm_halt_ns
    );
sig_sm_halt_reg_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_halt_ns,
      Q => sig_sm_halt_reg,
      S => \out\
    );
sig_sm_ld_calc1_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004000404440"
    )
        port map (
      I0 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(1),
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(0),
      I2 => \^i_rd_wr_cntrl_module/i_mstr_pcc/fsm_sequential_sig_pcc_sm_state_reg[0]\,
      I3 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2),
      I4 => \^sig_sm_ld_calc1_reg_reg_1\,
      I5 => \^sig_sm_ld_calc1_reg_reg_0\,
      O => sig_sm_ld_calc1_reg_ns
    );
sig_sm_ld_calc1_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_ld_calc1_reg_ns,
      Q => sig_sm_ld_calc1_reg,
      R => \out\
    );
sig_sm_ld_calc2_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(1),
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2),
      I2 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(0),
      O => sig_sm_ld_calc2_reg_ns
    );
sig_sm_ld_calc2_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_ld_calc2_reg_ns,
      Q => sig_sm_ld_calc2_reg,
      R => \out\
    );
sig_sm_pop_input_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2),
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(1),
      I2 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(0),
      I3 => \^sig_sm_ld_calc1_reg_reg_0\,
      I4 => \^sig_sm_ld_calc1_reg_reg_1\,
      O => sig_sm_pop_input_reg_ns
    );
sig_sm_pop_input_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_sm_pop_input_reg_ns,
      Q => sig_sm_pop_input_reg,
      R => \out\
    );
\sig_xfer_addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(0),
      Q => \sig_next_addr_reg_reg[31]\(0),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(10),
      Q => \sig_next_addr_reg_reg[31]\(10),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(11),
      Q => \sig_next_addr_reg_reg[31]\(11),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(12),
      Q => \sig_next_addr_reg_reg[31]\(12),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(13),
      Q => \sig_next_addr_reg_reg[31]\(13),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(14),
      Q => \sig_next_addr_reg_reg[31]\(14),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => p_1_in2_in,
      Q => \sig_next_addr_reg_reg[31]\(15),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(0),
      Q => \sig_next_addr_reg_reg[31]\(16),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(1),
      Q => \sig_next_addr_reg_reg[31]\(17),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(2),
      Q => \sig_next_addr_reg_reg[31]\(18),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(3),
      Q => \sig_next_addr_reg_reg[31]\(19),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(1),
      Q => \sig_next_addr_reg_reg[31]\(1),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(4),
      Q => \sig_next_addr_reg_reg[31]\(20),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(5),
      Q => \sig_next_addr_reg_reg[31]\(21),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(6),
      Q => \sig_next_addr_reg_reg[31]\(22),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(7),
      Q => \sig_next_addr_reg_reg[31]\(23),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(8),
      Q => \sig_next_addr_reg_reg[31]\(24),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(9),
      Q => \sig_next_addr_reg_reg[31]\(25),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(10),
      Q => \sig_next_addr_reg_reg[31]\(26),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(11),
      Q => \sig_next_addr_reg_reg[31]\(27),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(12),
      Q => \sig_next_addr_reg_reg[31]\(28),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(13),
      Q => \sig_next_addr_reg_reg[31]\(29),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(2),
      Q => \sig_next_addr_reg_reg[31]\(2),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(14),
      Q => \sig_next_addr_reg_reg[31]\(30),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \GEN_ADDR_32.sig_addr_cntr_msh_reg\(15),
      Q => \sig_next_addr_reg_reg[31]\(31),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(3),
      Q => \sig_next_addr_reg_reg[31]\(3),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(4),
      Q => \sig_next_addr_reg_reg[31]\(4),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(5),
      Q => \sig_next_addr_reg_reg[31]\(5),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(6),
      Q => \sig_next_addr_reg_reg[31]\(6),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(7),
      Q => \sig_next_addr_reg_reg[31]\(7),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(8),
      Q => \sig_next_addr_reg_reg[31]\(8),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_addr_reg_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_address(9),
      Q => \sig_next_addr_reg_reg[31]\(9),
      R => sig_xfer_addr_reg0
    );
sig_xfer_calc_err_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_pcc2all_calc_err,
      Q => sig_pcc2data_calc_error,
      R => sig_xfer_addr_reg0
    );
sig_xfer_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => sig_pcc2all_calc_err,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      O => sig_xfer_cmd_cmplt_reg_i_1_n_0
    );
sig_xfer_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_cmd_cmplt_reg_i_1_n_0,
      Q => sig_pcc2data_cmd_cmplt,
      R => sig_xfer_addr_reg0
    );
sig_xfer_eof_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_input_eof_reg,
      I1 => sig_xfer_is_seq_reg_i_1_n_0,
      O => sig_xfer_eof_reg0
    );
sig_xfer_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_eof_reg0,
      Q => sig_pcc2data_eof,
      R => sig_xfer_addr_reg0
    );
sig_xfer_is_seq_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F35F5F"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_addr_cntr_incr_imreg[11]_i_2_n_0\,
      I1 => sig_btt_lt_b2mbaa1,
      I2 => sig_btt_cntr(11),
      I3 => sig_btt_eq_b2mbaa1,
      I4 => sig_xfer_is_seq_reg_i_2_n_0,
      O => sig_xfer_is_seq_reg_i_1_n_0
    );
sig_xfer_is_seq_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => sig_btt_residue_slice(0),
      I1 => sig_btt_residue_slice(6),
      I2 => sig_btt_residue_slice(2),
      I3 => sig_xfer_is_seq_reg_i_3_n_0,
      I4 => sig_xfer_is_seq_reg_i_4_n_0,
      O => sig_xfer_is_seq_reg_i_2_n_0
    );
sig_xfer_is_seq_reg_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_btt_residue_slice(7),
      I1 => sig_btt_residue_slice(5),
      I2 => sig_btt_residue_slice(8),
      I3 => sig_btt_residue_slice(1),
      O => sig_xfer_is_seq_reg_i_3_n_0
    );
sig_xfer_is_seq_reg_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => sig_btt_residue_slice(10),
      I1 => sig_btt_residue_slice(9),
      I2 => sig_btt_residue_slice(4),
      I3 => sig_btt_residue_slice(3),
      O => sig_xfer_is_seq_reg_i_4_n_0
    );
sig_xfer_is_seq_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_xfer_is_seq_reg_i_1_n_0,
      Q => sig_pcc2data_sequential,
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      O => \sig_xfer_len_reg[0]_i_1_n_0\
    );
\sig_xfer_len_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      O => \sig_xfer_len_reg[1]_i_1_n_0\
    );
\sig_xfer_len_reg[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[4]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[2]\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[0]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[1]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[3]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[5]\,
      O => \sig_xfer_len_reg[2]_i_1_n_0\
    );
\sig_xfer_len_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \sig_byte_change_minus1/i__n_0\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      O => \sig_xfer_len_reg[3]_i_1_n_0\
    );
\sig_xfer_len_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      I1 => \sig_byte_change_minus1/i__n_0\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      O => \sig_xfer_len_reg[4]_i_1_n_0\
    );
\sig_xfer_len_reg[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      I1 => \sig_byte_change_minus1/i__n_0\,
      I2 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\,
      O => \sig_xfer_len_reg[5]_i_1_n_0\
    );
\sig_xfer_len_reg[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      I2 => \sig_byte_change_minus1/i__n_0\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9]\,
      O => \sig_xfer_len_reg[6]_i_1_n_0\
    );
\sig_xfer_len_reg[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE00000001"
    )
        port map (
      I0 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[9]\,
      I1 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[7]\,
      I2 => \sig_byte_change_minus1/i__n_0\,
      I3 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[6]\,
      I4 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[8]\,
      I5 => \GEN_ADDR_32.sig_adjusted_addr_incr_reg_reg_n_0_[10]\,
      O => \sig_xfer_len_reg[7]_i_1_n_0\
    );
\sig_xfer_len_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[0]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(0),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[1]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(1),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[2]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(2),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[3]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(3),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[4]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(4),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[5]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(5),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[6]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(6),
      R => sig_xfer_addr_reg0
    );
\sig_xfer_len_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => \sig_xfer_len_reg[7]_i_1_n_0\,
      Q => \^sig_next_len_reg_reg[7]\(7),
      R => sig_xfer_addr_reg0
    );
sig_xfer_reg_empty_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABBBABBBABBBABA"
    )
        port map (
      I0 => \out\,
      I1 => sig_xfer_reg_empty_i_3_n_0,
      I2 => sig_rdc2pcc_cmd_ready,
      I3 => \^sig_pcc2data_cmd_valid\,
      I4 => sig_pcc2addr_cmd_valid,
      I5 => sig_cmd2dre_valid_reg_n_0,
      O => sig_xfer_addr_reg0
    );
sig_xfer_reg_empty_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_xfer_reg_empty,
      I1 => sig_ld_xfer_reg,
      O => sig_push_xfer_reg15_out
    );
sig_xfer_reg_empty_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F8F8F8F8F8"
    )
        port map (
      I0 => sig_ld_xfer_reg,
      I1 => sig_xfer_reg_empty,
      I2 => sig_pcc2addr_cmd_valid,
      I3 => sig_cmd2all_doing_read,
      I4 => sig_addr2stat_cmd_fifo_empty,
      I5 => sig_llink2rd_allow_addr_req,
      O => sig_xfer_reg_empty_i_3_n_0
    );
sig_xfer_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => '0',
      Q => sig_xfer_reg_empty,
      S => sig_xfer_addr_reg0
    );
sig_xfer_type_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_xfer_reg15_out,
      D => sig_input_burst_type_reg,
      Q => sig_pcc2addr_burst(0),
      R => sig_xfer_addr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink is
  port (
    eof_n_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mstrd_eof_n : out STD_LOGIC;
    eof_n_reg_0 : out STD_LOGIC;
    AXI_BRAM_we_i_reg : out STD_LOGIC;
    \trans_cnt_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_m_valid_out_reg : out STD_LOGIC;
    sig_llink2rd_allow_addr_req : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_rdwr2llink_int_err : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    sig_m_valid_dup_reg : in STD_LOGIC;
    sig_last_reg_out_reg : in STD_LOGIC;
    sig_m_valid_out_reg_0 : in STD_LOGIC;
    sig_rd_llink_enable : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_doing_read_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink is
  signal \I_WR_LLINK_ADAPTER/sig_wr_error_reg\ : STD_LOGIC;
  signal \^eof_n_reg\ : STD_LOGIC;
  signal \^eof_n_reg_0\ : STD_LOGIC;
  signal sig_allow_rd_requests_i_1_n_0 : STD_LOGIC;
  signal \^sig_llink2rd_allow_addr_req\ : STD_LOGIC;
  signal sig_llink_busy0 : STD_LOGIC;
  signal sig_llink_busy_i_1_n_0 : STD_LOGIC;
  signal sig_rd_discontinue_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of AXI_BRAM_we_i_i_1 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of eof_n_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \sig_data_reg_out[55]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of sig_llink_busy_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of sig_m_valid_dup_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \trans_cnt[0]_i_2\ : label is "soft_lutpair20";
begin
  eof_n_reg <= \^eof_n_reg\;
  eof_n_reg_0 <= \^eof_n_reg_0\;
  sig_llink2rd_allow_addr_req <= \^sig_llink2rd_allow_addr_req\;
AXI_BRAM_we_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_m_valid_out_reg_0,
      I1 => \^eof_n_reg_0\,
      I2 => \^eof_n_reg\,
      O => AXI_BRAM_we_i_reg
    );
eof_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => sig_last_reg_out_reg,
      I1 => \^eof_n_reg_0\,
      I2 => \^eof_n_reg\,
      O => bus2ip_mstrd_eof_n
    );
sig_allow_rd_requests_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EAEA00EA"
    )
        port map (
      I0 => \^sig_llink2rd_allow_addr_req\,
      I1 => \^eof_n_reg\,
      I2 => IP2Bus_MstRd_dst_rdy,
      I3 => sig_cmd2all_doing_read,
      I4 => sig_doing_read_reg,
      I5 => \out\,
      O => sig_allow_rd_requests_i_1_n_0
    );
sig_allow_rd_requests_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_allow_rd_requests_i_1_n_0,
      Q => \^sig_llink2rd_allow_addr_req\,
      R => '0'
    );
\sig_data_reg_out[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => IP2Bus_MstRd_dst_rdy,
      I1 => \^eof_n_reg\,
      I2 => sig_m_valid_dup_reg,
      O => E(0)
    );
sig_llink_busy_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF4CCC"
    )
        port map (
      I0 => IP2Bus_MstRd_dst_rdy,
      I1 => \^eof_n_reg\,
      I2 => sig_m_valid_out_reg_0,
      I3 => sig_last_reg_out_reg,
      I4 => sig_rd_llink_enable,
      I5 => sig_llink_busy0,
      O => sig_llink_busy_i_1_n_0
    );
sig_llink_busy_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => \out\,
      I1 => \^eof_n_reg\,
      I2 => IP2Bus_MstRd_dst_rdy,
      I3 => \^eof_n_reg_0\,
      O => sig_llink_busy0
    );
sig_llink_busy_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_llink_busy_i_1_n_0,
      Q => \^eof_n_reg\,
      R => '0'
    );
sig_m_valid_dup_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^eof_n_reg\,
      I1 => IP2Bus_MstRd_dst_rdy,
      O => sig_m_valid_out_reg
    );
sig_rd_discontinue_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002F2F0F0"
    )
        port map (
      I0 => sig_rdwr2llink_int_err,
      I1 => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      I2 => \^eof_n_reg_0\,
      I3 => IP2Bus_MstRd_dst_rdy,
      I4 => \^eof_n_reg\,
      I5 => \out\,
      O => sig_rd_discontinue_i_1_n_0
    );
sig_rd_discontinue_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rd_discontinue_i_1_n_0,
      Q => \^eof_n_reg_0\,
      R => '0'
    );
sig_rd_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_rdwr2llink_int_err,
      Q => \I_WR_LLINK_ADAPTER/sig_wr_error_reg\,
      R => \out\
    );
\trans_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \^eof_n_reg\,
      I1 => \^eof_n_reg_0\,
      I2 => sig_last_reg_out_reg,
      I3 => eof_n,
      O => \trans_cnt_reg[4]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl is
  port (
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_rsc2rdc_ready : out STD_LOGIC;
    sig_error_sh_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_error_sh_reg_reg_0 : out STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_push_rd_sts_reg : in STD_LOGIC;
    sig_rd_sts_reg_full0 : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    sig_rd_sts_interr_reg0 : in STD_LOGIC;
    sig_rd_sts_decerr_reg0 : in STD_LOGIC;
    sig_rd_sts_slverr_reg0 : in STD_LOGIC;
    sig_push_status1_out : in STD_LOGIC;
    md_error : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl is
  signal \^sig_error_sh_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_rsc2stat_status\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  sig_error_sh_reg_reg(0) <= \^sig_error_sh_reg_reg\(0);
  sig_rsc2stat_status(1 downto 0) <= \^sig_rsc2stat_status\(1 downto 0);
sig_error_sh_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE00"
    )
        port map (
      I0 => \^sig_rsc2stat_status\(1),
      I1 => \^sig_rsc2stat_status\(0),
      I2 => \^sig_error_sh_reg_reg\(0),
      I3 => sig_push_status1_out,
      I4 => md_error,
      O => sig_error_sh_reg_reg_0
    );
sig_rd_sts_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_decerr_reg0,
      Q => \^sig_rsc2stat_status\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_interr_reg0,
      Q => \^sig_error_sh_reg_reg\(0),
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => p_0_in,
      Q => sig_rsc2rdc_ready,
      S => sig_rd_sts_tag_reg0
    );
sig_rd_sts_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_reg_full0,
      Q => sig_rsc2stat_status_valid,
      R => sig_rd_sts_tag_reg0
    );
sig_rd_sts_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_rd_sts_reg,
      D => sig_rd_sts_slverr_reg0,
      Q => \^sig_rsc2stat_status\(1),
      R => sig_rd_sts_tag_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl is
  port (
    sig_rdc2pcc_cmd_ready : out STD_LOGIC;
    sig_next_eof_reg : out STD_LOGIC;
    sig_next_eof_reg_reg_0 : out STD_LOGIC;
    sig_s_ready_dup_reg : out STD_LOGIC;
    sig_rdc2rdskid_tlast : out STD_LOGIC;
    sig_rd_sts_reg_full0 : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    sig_rd_sts_interr_reg0 : out STD_LOGIC;
    sig_rd_sts_decerr_reg0 : out STD_LOGIC;
    sig_rd_sts_slverr_reg0 : out STD_LOGIC;
    sig_push_rd_sts_reg : out STD_LOGIC;
    sig_pcc2data_cmd_cmplt : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_pcc2data_calc_error : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_pcc2data_sequential : in STD_LOGIC;
    sig_pcc2data_eof : in STD_LOGIC;
    \sig_xfer_len_reg_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sig_s_ready_out_reg : in STD_LOGIC;
    \sig_xfer_len_reg_reg[0]\ : in STD_LOGIC;
    sig_s_ready_out_reg_0 : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    sig_rsc2stat_status_valid : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    sig_pcc2data_cmd_valid : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rd_sts_interr_reg_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_rsc2stat_status : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_rsc2rdc_ready : in STD_LOGIC;
    sig_posted_to_axi_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl is
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_addr_posted_cntr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \sig_addr_posted_cntr[0]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[1]_i_1_n_0\ : STD_LOGIC;
  signal \sig_addr_posted_cntr[2]_i_1_n_0\ : STD_LOGIC;
  signal sig_clr_dqual_reg : STD_LOGIC;
  signal sig_cmd_cmplt_last_dbeat : STD_LOGIC;
  signal sig_coelsc_decerr_reg0 : STD_LOGIC;
  signal sig_coelsc_interr_reg0 : STD_LOGIC;
  signal sig_coelsc_slverr_reg0 : STD_LOGIC;
  signal sig_coelsc_tag_reg0 : STD_LOGIC;
  signal \sig_dbeat_cntr[4]_i_2_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_3_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr[7]_i_4_n_0\ : STD_LOGIC;
  signal \sig_dbeat_cntr_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_dqual_reg_empty : STD_LOGIC;
  signal sig_dqual_reg_full : STD_LOGIC;
  signal sig_last_dbeat_i_1_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_2_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_3_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_4_n_0 : STD_LOGIC;
  signal sig_last_dbeat_i_6_n_0 : STD_LOGIC;
  signal sig_last_dbeat_reg_n_0 : STD_LOGIC;
  signal sig_last_mmap_dbeat : STD_LOGIC;
  signal sig_last_mmap_dbeat_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg : STD_LOGIC;
  signal sig_ld_new_cmd_reg_i_1_n_0 : STD_LOGIC;
  signal sig_next_calc_error_reg : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_4_n_0 : STD_LOGIC;
  signal sig_next_cmd_cmplt_reg_i_5_n_0 : STD_LOGIC;
  signal \^sig_next_eof_reg\ : STD_LOGIC;
  signal \^sig_next_eof_reg_reg_0\ : STD_LOGIC;
  signal sig_next_sequential_reg : STD_LOGIC;
  signal sig_push_coelsc_reg : STD_LOGIC;
  signal \^sig_rdc2pcc_cmd_ready\ : STD_LOGIC;
  signal sig_rdc2rsc_calc_err : STD_LOGIC;
  signal sig_rdc2rsc_decerr : STD_LOGIC;
  signal sig_rdc2rsc_slverr : STD_LOGIC;
  signal sig_rdc2rsc_valid : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sig_coelsc_decerr_reg_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of sig_coelsc_interr_reg_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of sig_coelsc_reg_full_i_3 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of sig_coelsc_slverr_reg_i_1 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[0]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[4]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sig_dbeat_cntr[7]_i_4\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of sig_last_mmap_dbeat_reg_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of sig_last_skid_reg_i_1 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of sig_m_valid_dup_i_3 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of sig_rd_sts_interr_reg_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_empty_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of sig_rd_sts_reg_full_i_3 : label is "soft_lutpair40";
begin
  sig_next_eof_reg <= \^sig_next_eof_reg\;
  sig_next_eof_reg_reg_0 <= \^sig_next_eof_reg_reg_0\;
  sig_rdc2pcc_cmd_ready <= \^sig_rdc2pcc_cmd_ready\;
m_axi_rready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF01FFFF"
    )
        port map (
      I0 => sig_addr_posted_cntr(0),
      I1 => sig_addr_posted_cntr(2),
      I2 => sig_addr_posted_cntr(1),
      I3 => sig_next_calc_error_reg,
      I4 => sig_dqual_reg_full,
      I5 => sig_rdc2rsc_valid,
      O => \^sig_next_eof_reg_reg_0\
    );
\sig_addr_posted_cntr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F87878778787808"
    )
        port map (
      I0 => sig_cmd2all_doing_read,
      I1 => sig_posted_to_axi_reg,
      I2 => sig_last_mmap_dbeat_reg,
      I3 => sig_addr_posted_cntr(2),
      I4 => sig_addr_posted_cntr(1),
      I5 => sig_addr_posted_cntr(0),
      O => \sig_addr_posted_cntr[0]_i_1_n_0\
    );
\sig_addr_posted_cntr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AADAA4AAA4AAA4AA"
    )
        port map (
      I0 => sig_addr_posted_cntr(1),
      I1 => sig_addr_posted_cntr(2),
      I2 => sig_addr_posted_cntr(0),
      I3 => sig_last_mmap_dbeat_reg,
      I4 => sig_posted_to_axi_reg,
      I5 => sig_cmd2all_doing_read,
      O => \sig_addr_posted_cntr[1]_i_1_n_0\
    );
\sig_addr_posted_cntr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCECC8CCC8CCC8CC"
    )
        port map (
      I0 => sig_addr_posted_cntr(1),
      I1 => sig_addr_posted_cntr(2),
      I2 => sig_addr_posted_cntr(0),
      I3 => sig_last_mmap_dbeat_reg,
      I4 => sig_posted_to_axi_reg,
      I5 => sig_cmd2all_doing_read,
      O => \sig_addr_posted_cntr[2]_i_1_n_0\
    );
\sig_addr_posted_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[0]_i_1_n_0\,
      Q => sig_addr_posted_cntr(0),
      R => \out\
    );
\sig_addr_posted_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[1]_i_1_n_0\,
      Q => sig_addr_posted_cntr(1),
      R => \out\
    );
\sig_addr_posted_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_addr_posted_cntr[2]_i_1_n_0\,
      Q => sig_addr_posted_cntr(2),
      R => \out\
    );
sig_coelsc_decerr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_rdc2rsc_decerr,
      I1 => m_axi_rresp(0),
      I2 => m_axi_rresp(1),
      O => sig_coelsc_decerr_reg0
    );
sig_coelsc_decerr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_decerr_reg0,
      Q => sig_rdc2rsc_decerr,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_calc_err,
      I1 => sig_next_calc_error_reg,
      O => sig_coelsc_interr_reg0
    );
sig_coelsc_interr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_interr_reg0,
      Q => sig_rdc2rsc_calc_err,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF15FF00FF00FF00"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_next_calc_error_reg,
      I2 => sig_ld_new_cmd_reg,
      I3 => \out\,
      I4 => sig_rdc2rsc_valid,
      I5 => sig_rsc2rdc_ready,
      O => sig_coelsc_tag_reg0
    );
sig_coelsc_reg_full_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_next_calc_error_reg,
      I2 => sig_ld_new_cmd_reg,
      O => sig_push_coelsc_reg
    );
sig_coelsc_reg_full_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => sig_next_calc_error_reg,
      I1 => m_axi_rlast,
      I2 => m_axi_rvalid,
      I3 => sig_next_cmd_cmplt_reg,
      O => sig_cmd_cmplt_last_dbeat
    );
sig_coelsc_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_cmd_cmplt_last_dbeat,
      Q => sig_rdc2rsc_valid,
      R => sig_coelsc_tag_reg0
    );
sig_coelsc_slverr_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => sig_rdc2rsc_slverr,
      I1 => m_axi_rresp(0),
      I2 => m_axi_rresp(1),
      O => sig_coelsc_slverr_reg0
    );
sig_coelsc_slverr_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_push_coelsc_reg,
      D => sig_coelsc_slverr_reg0,
      Q => sig_rdc2rsc_slverr,
      R => sig_coelsc_tag_reg0
    );
\sig_dbeat_cntr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(0),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\sig_dbeat_cntr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(1),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(1),
      I3 => \sig_dbeat_cntr_reg__0\(0),
      O => \p_0_in__0\(1)
    );
\sig_dbeat_cntr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBB8888B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(2),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(1),
      I3 => \sig_dbeat_cntr_reg__0\(0),
      I4 => \sig_dbeat_cntr_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\sig_dbeat_cntr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(3),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(3),
      I3 => \sig_dbeat_cntr_reg__0\(1),
      I4 => \sig_dbeat_cntr_reg__0\(0),
      I5 => \sig_dbeat_cntr_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\sig_dbeat_cntr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(4),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr[4]_i_2_n_0\,
      I3 => \sig_dbeat_cntr_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\sig_dbeat_cntr[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(0),
      I1 => \sig_dbeat_cntr_reg__0\(1),
      I2 => \sig_dbeat_cntr_reg__0\(3),
      I3 => \sig_dbeat_cntr_reg__0\(2),
      O => \sig_dbeat_cntr[4]_i_2_n_0\
    );
\sig_dbeat_cntr[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(5),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I3 => \sig_dbeat_cntr_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\sig_dbeat_cntr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(6),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(6),
      I3 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I4 => \sig_dbeat_cntr_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\sig_dbeat_cntr[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
      I1 => \sig_dbeat_cntr[7]_i_3_n_0\,
      O => \sig_dbeat_cntr[7]_i_1_n_0\
    );
\sig_dbeat_cntr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(7),
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \sig_dbeat_cntr_reg__0\(7),
      I3 => \sig_dbeat_cntr[7]_i_4_n_0\,
      I4 => \sig_dbeat_cntr_reg__0\(5),
      I5 => \sig_dbeat_cntr_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\sig_dbeat_cntr[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => \sig_dbeat_cntr_reg__0\(6),
      I2 => \sig_dbeat_cntr_reg__0\(5),
      I3 => \sig_dbeat_cntr_reg__0\(7),
      I4 => \sig_dbeat_cntr_reg__0\(4),
      I5 => \sig_dbeat_cntr[4]_i_2_n_0\,
      O => \sig_dbeat_cntr[7]_i_3_n_0\
    );
\sig_dbeat_cntr[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(4),
      I1 => \sig_dbeat_cntr_reg__0\(2),
      I2 => \sig_dbeat_cntr_reg__0\(3),
      I3 => \sig_dbeat_cntr_reg__0\(1),
      I4 => \sig_dbeat_cntr_reg__0\(0),
      O => \sig_dbeat_cntr[7]_i_4_n_0\
    );
\sig_dbeat_cntr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => \sig_dbeat_cntr_reg__0\(0),
      R => \out\
    );
\sig_dbeat_cntr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => \sig_dbeat_cntr_reg__0\(1),
      R => \out\
    );
\sig_dbeat_cntr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => \sig_dbeat_cntr_reg__0\(2),
      R => \out\
    );
\sig_dbeat_cntr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => \sig_dbeat_cntr_reg__0\(3),
      R => \out\
    );
\sig_dbeat_cntr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => \sig_dbeat_cntr_reg__0\(4),
      R => \out\
    );
\sig_dbeat_cntr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => \sig_dbeat_cntr_reg__0\(5),
      R => \out\
    );
\sig_dbeat_cntr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => \sig_dbeat_cntr_reg__0\(6),
      R => \out\
    );
\sig_dbeat_cntr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \sig_dbeat_cntr[7]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => \sig_dbeat_cntr_reg__0\(7),
      R => \out\
    );
sig_dqual_reg_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => '0',
      Q => sig_dqual_reg_empty,
      S => sig_clr_dqual_reg
    );
sig_dqual_reg_full_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => \^sig_rdc2pcc_cmd_ready\,
      Q => sig_dqual_reg_full,
      R => sig_clr_dqual_reg
    );
sig_last_dbeat_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000ABAF0000ABA0"
    )
        port map (
      I0 => sig_last_dbeat_i_2_n_0,
      I1 => sig_last_dbeat_i_3_n_0,
      I2 => \^sig_rdc2pcc_cmd_ready\,
      I3 => \sig_dbeat_cntr[7]_i_3_n_0\,
      I4 => \out\,
      I5 => sig_last_dbeat_reg_n_0,
      O => sig_last_dbeat_i_1_n_0
    );
sig_last_dbeat_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005504"
    )
        port map (
      I0 => \sig_xfer_len_reg_reg[7]\(7),
      I1 => sig_s_ready_out_reg,
      I2 => sig_last_dbeat_i_4_n_0,
      I3 => sig_dqual_reg_empty,
      I4 => sig_next_cmd_cmplt_reg_i_4_n_0,
      I5 => \sig_xfer_len_reg_reg[0]\,
      O => sig_last_dbeat_i_2_n_0
    );
sig_last_dbeat_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFDFF"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => \sig_dbeat_cntr_reg__0\(3),
      I2 => \sig_dbeat_cntr_reg__0\(2),
      I3 => \sig_dbeat_cntr_reg__0\(0),
      I4 => \sig_dbeat_cntr_reg__0\(1),
      I5 => sig_last_dbeat_i_6_n_0,
      O => sig_last_dbeat_i_3_n_0
    );
sig_last_dbeat_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => sig_next_sequential_reg,
      I1 => sig_last_dbeat_reg_n_0,
      O => sig_last_dbeat_i_4_n_0
    );
sig_last_dbeat_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \sig_dbeat_cntr_reg__0\(6),
      I1 => \sig_dbeat_cntr_reg__0\(5),
      I2 => \sig_dbeat_cntr_reg__0\(7),
      I3 => \sig_dbeat_cntr_reg__0\(4),
      O => sig_last_dbeat_i_6_n_0
    );
sig_last_dbeat_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_dbeat_i_1_n_0,
      Q => sig_last_dbeat_reg_n_0,
      R => '0'
    );
sig_last_mmap_dbeat_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^sig_next_eof_reg_reg_0\,
      I1 => sig_s_ready_out_reg_0,
      I2 => m_axi_rvalid,
      I3 => m_axi_rlast,
      O => sig_last_mmap_dbeat
    );
sig_last_mmap_dbeat_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_mmap_dbeat,
      Q => sig_last_mmap_dbeat_reg,
      R => \out\
    );
sig_last_skid_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^sig_next_eof_reg\,
      I1 => m_axi_rvalid,
      I2 => m_axi_rlast,
      O => sig_rdc2rdskid_tlast
    );
sig_ld_new_cmd_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \^sig_rdc2pcc_cmd_ready\,
      I1 => sig_ld_new_cmd_reg,
      I2 => \out\,
      O => sig_ld_new_cmd_reg_i_1_n_0
    );
sig_ld_new_cmd_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_ld_new_cmd_reg_i_1_n_0,
      Q => sig_ld_new_cmd_reg,
      R => '0'
    );
sig_m_valid_dup_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^sig_next_eof_reg_reg_0\,
      I1 => m_axi_rvalid,
      O => sig_s_ready_dup_reg
    );
sig_next_calc_error_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_calc_error,
      Q => sig_next_calc_error_reg,
      R => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \out\,
      I1 => \^sig_rdc2pcc_cmd_ready\,
      I2 => \^sig_next_eof_reg_reg_0\,
      I3 => sig_s_ready_out_reg_0,
      I4 => m_axi_rvalid,
      I5 => m_axi_rlast,
      O => sig_clr_dqual_reg
    );
sig_next_cmd_cmplt_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF80"
    )
        port map (
      I0 => sig_s_ready_out_reg,
      I1 => sig_last_dbeat_reg_n_0,
      I2 => sig_next_sequential_reg,
      I3 => sig_dqual_reg_empty,
      I4 => sig_next_cmd_cmplt_reg_i_4_n_0,
      O => \^sig_rdc2pcc_cmd_ready\
    );
sig_next_cmd_cmplt_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEFFFFFFFFFFFF"
    )
        port map (
      I0 => sig_next_cmd_cmplt_reg_i_5_n_0,
      I1 => sig_next_calc_error_reg,
      I2 => sig_status_reg_empty,
      I3 => sig_rsc2stat_status_valid,
      I4 => sig_cmd2all_doing_read,
      I5 => sig_pcc2data_cmd_valid,
      O => sig_next_cmd_cmplt_reg_i_4_n_0
    );
sig_next_cmd_cmplt_reg_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sig_addr_posted_cntr(2),
      I1 => sig_addr_posted_cntr(1),
      I2 => sig_addr_posted_cntr(0),
      O => sig_next_cmd_cmplt_reg_i_5_n_0
    );
sig_next_cmd_cmplt_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_cmd_cmplt,
      Q => sig_next_cmd_cmplt_reg,
      R => sig_clr_dqual_reg
    );
sig_next_eof_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_eof,
      Q => \^sig_next_eof_reg\,
      R => sig_clr_dqual_reg
    );
sig_next_sequential_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => \^sig_rdc2pcc_cmd_ready\,
      D => sig_pcc2data_sequential,
      Q => sig_next_sequential_reg,
      R => sig_clr_dqual_reg
    );
sig_rd_sts_decerr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_decerr,
      I1 => sig_rsc2stat_status(0),
      O => sig_rd_sts_decerr_reg0
    );
sig_rd_sts_interr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_calc_err,
      I1 => sig_rd_sts_interr_reg_reg(0),
      O => sig_rd_sts_interr_reg0
    );
sig_rd_sts_reg_empty_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sig_rdc2rsc_calc_err,
      I1 => sig_rdc2rsc_valid,
      O => p_0_in
    );
sig_rd_sts_reg_full_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sig_rdc2rsc_valid,
      I1 => sig_rsc2rdc_ready,
      O => sig_push_rd_sts_reg
    );
sig_rd_sts_reg_full_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_valid,
      I1 => sig_rdc2rsc_calc_err,
      O => sig_rd_sts_reg_full0
    );
sig_rd_sts_slverr_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_rdc2rsc_slverr,
      I1 => sig_rsc2stat_status(1),
      O => sig_rd_sts_slverr_reg0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset is
  port (
    \out\ : out STD_LOGIC;
    \INFERRED_GEN.cnt_i_reg[2]\ : out STD_LOGIC;
    sig_rd_error_reg_reg : out STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset is
  signal \sig_axi_por2rst__0\ : STD_LOGIC;
  signal sig_axi_por2rst_out : STD_LOGIC;
  signal sig_axi_por2rst_out_i_2_n_0 : STD_LOGIC;
  signal sig_axi_por_reg1 : STD_LOGIC;
  signal sig_axi_por_reg2 : STD_LOGIC;
  signal sig_axi_por_reg3 : STD_LOGIC;
  signal sig_axi_por_reg4 : STD_LOGIC;
  signal sig_axi_por_reg5 : STD_LOGIC;
  signal sig_axi_por_reg6 : STD_LOGIC;
  signal sig_axi_por_reg7 : STD_LOGIC;
  signal sig_axi_por_reg8 : STD_LOGIC;
  signal sig_cmd_reset_reg : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_cmd_reset_reg : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_cmd_reset_reg : signal is "no";
  signal sig_cmd_reset_reg_i_1_n_0 : STD_LOGIC;
  signal sig_llink_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_llink_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_llink_reset_reg : signal is "no";
  signal sig_rdwr_reset_reg : STD_LOGIC;
  attribute RTL_KEEP of sig_rdwr_reset_reg : signal is "true";
  attribute equivalent_register_removal of sig_rdwr_reset_reg : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_cmd_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_cmd_reset_reg_reg : label is "no";
  attribute KEEP of sig_llink_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_llink_reset_reg_reg : label is "no";
  attribute KEEP of sig_rdwr_reset_reg_reg : label is "yes";
  attribute equivalent_register_removal of sig_rdwr_reset_reg_reg : label is "no";
begin
  \INFERRED_GEN.cnt_i_reg[2]\ <= sig_rdwr_reset_reg;
  \out\ <= sig_cmd_reset_reg;
  sig_rd_error_reg_reg <= sig_llink_reset_reg;
sig_axi_por2rst_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => sig_axi_por_reg4,
      I1 => sig_axi_por_reg5,
      I2 => sig_axi_por_reg3,
      I3 => sig_axi_por_reg2,
      I4 => sig_axi_por2rst_out_i_2_n_0,
      O => \sig_axi_por2rst__0\
    );
sig_axi_por2rst_out_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => sig_axi_por_reg7,
      I1 => sig_axi_por_reg6,
      I2 => sig_axi_por_reg1,
      I3 => sig_axi_por_reg8,
      O => sig_axi_por2rst_out_i_2_n_0
    );
sig_axi_por2rst_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_axi_por2rst__0\,
      Q => sig_axi_por2rst_out,
      R => '0'
    );
sig_axi_por_reg1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => sig_axi_por_reg1,
      R => '0'
    );
sig_axi_por_reg2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg1,
      Q => sig_axi_por_reg2,
      R => '0'
    );
sig_axi_por_reg3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg2,
      Q => sig_axi_por_reg3,
      R => '0'
    );
sig_axi_por_reg4_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg3,
      Q => sig_axi_por_reg4,
      R => '0'
    );
sig_axi_por_reg5_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg4,
      Q => sig_axi_por_reg5,
      R => '0'
    );
sig_axi_por_reg6_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg5,
      Q => sig_axi_por_reg6,
      R => '0'
    );
sig_axi_por_reg7_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg6,
      Q => sig_axi_por_reg7,
      R => '0'
    );
sig_axi_por_reg8_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_axi_por_reg7,
      Q => sig_axi_por_reg8,
      R => '0'
    );
sig_cmd_reset_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => sig_axi_por2rst_out,
      I1 => scndry_out,
      I2 => m_axi_aresetn,
      O => sig_cmd_reset_reg_i_1_n_0
    );
sig_cmd_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_cmd_reset_reg,
      R => '0'
    );
sig_llink_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_llink_reset_reg,
      R => '0'
    );
sig_rdwr_reset_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd_reset_reg_i_1_n_0,
      Q => sig_rdwr_reset_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf is
  port (
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_reset_reg : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf is
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__0_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  signal \sig_strb_reg_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \sig_strb_skid_reg_reg_n_0_[7]\ : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  m_axi_wstrb(0) <= \^m_axi_wstrb\(0);
  m_axi_wvalid <= sig_m_valid_out;
\sig_m_valid_dup_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01110000"
    )
        port map (
      I0 => sig_reset_reg,
      I1 => \out\,
      I2 => sig_s_ready_dup,
      I3 => m_axi_wready,
      I4 => sig_m_valid_dup,
      O => \sig_m_valid_dup_i_1__0_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__0_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => m_axi_wready,
      I1 => sig_s_ready_dup,
      I2 => sig_reset_reg,
      O => \sig_s_ready_dup_i_1__0_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_dup,
      R => \out\
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__0_n_0\,
      Q => sig_s_ready_out,
      R => \out\
    );
\sig_strb_reg_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEEE0EE"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => \sig_strb_skid_reg_reg_n_0_[7]\,
      I2 => m_axi_wready,
      I3 => sig_m_valid_dup,
      I4 => \^m_axi_wstrb\(0),
      O => \sig_strb_reg_out[7]_i_1_n_0\
    );
\sig_strb_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_strb_reg_out[7]_i_1_n_0\,
      Q => \^m_axi_wstrb\(0),
      R => \out\
    );
\sig_strb_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => '1',
      Q => \sig_strb_skid_reg_reg_n_0_[7]\,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf is
  port (
    sig_m_valid_out_reg_0 : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_next_cmd_cmplt_reg_reg : out STD_LOGIC;
    \AXI_BRAM_data_i_reg[40]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    sig_rdwr_reset_reg_reg : in STD_LOGIC;
    sig_rdc2rdskid_tlast : in STD_LOGIC;
    \sig_addr_posted_cntr_reg[0]\ : in STD_LOGIC;
    sig_reset_reg : in STD_LOGIC;
    sig_llink_busy_reg_0 : in STD_LOGIC;
    \sig_addr_posted_cntr_reg[0]_0\ : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 35 downto 0 );
    sig_next_eof_reg : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf is
  signal sig_data_skid_mux_out : STD_LOGIC_VECTOR ( 55 downto 2 );
  signal sig_data_skid_reg : STD_LOGIC_VECTOR ( 55 downto 2 );
  signal sig_last_reg_out_i_1_n_0 : STD_LOGIC;
  signal sig_last_reg_out_i_2_n_0 : STD_LOGIC;
  signal sig_last_skid_reg : STD_LOGIC;
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal sig_m_valid_dup_i_1_n_0 : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal \^sig_rd2llink_strm_tlast\ : STD_LOGIC;
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal sig_s_ready_dup_i_1_n_0 : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
  \out\ <= sig_s_ready_out;
  sig_llink_busy_reg <= sig_m_valid_out;
  sig_m_valid_out_reg_0 <= sig_m_valid_dup;
  sig_rd2llink_strm_tlast <= \^sig_rd2llink_strm_tlast\;
m_axi_rready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_s_ready_out,
      I1 => \sig_addr_posted_cntr_reg[0]\,
      O => m_axi_rready
    );
\sig_data_reg_out[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(10),
      O => sig_data_skid_mux_out(10)
    );
\sig_data_reg_out[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(11),
      O => sig_data_skid_mux_out(11)
    );
\sig_data_reg_out[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(12),
      O => sig_data_skid_mux_out(12)
    );
\sig_data_reg_out[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(13),
      O => sig_data_skid_mux_out(13)
    );
\sig_data_reg_out[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(14),
      O => sig_data_skid_mux_out(14)
    );
\sig_data_reg_out[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(15),
      O => sig_data_skid_mux_out(15)
    );
\sig_data_reg_out[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(18),
      O => sig_data_skid_mux_out(18)
    );
\sig_data_reg_out[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(19),
      O => sig_data_skid_mux_out(19)
    );
\sig_data_reg_out[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(20),
      O => sig_data_skid_mux_out(20)
    );
\sig_data_reg_out[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(21),
      O => sig_data_skid_mux_out(21)
    );
\sig_data_reg_out[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(22),
      O => sig_data_skid_mux_out(22)
    );
\sig_data_reg_out[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(23),
      O => sig_data_skid_mux_out(23)
    );
\sig_data_reg_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(2),
      O => sig_data_skid_mux_out(2)
    );
\sig_data_reg_out[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(34),
      O => sig_data_skid_mux_out(34)
    );
\sig_data_reg_out[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(35),
      O => sig_data_skid_mux_out(35)
    );
\sig_data_reg_out[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(36),
      O => sig_data_skid_mux_out(36)
    );
\sig_data_reg_out[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(37),
      O => sig_data_skid_mux_out(37)
    );
\sig_data_reg_out[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(38),
      O => sig_data_skid_mux_out(38)
    );
\sig_data_reg_out[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(39),
      O => sig_data_skid_mux_out(39)
    );
\sig_data_reg_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(3),
      O => sig_data_skid_mux_out(3)
    );
\sig_data_reg_out[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(42),
      O => sig_data_skid_mux_out(42)
    );
\sig_data_reg_out[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(43),
      O => sig_data_skid_mux_out(43)
    );
\sig_data_reg_out[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(44),
      O => sig_data_skid_mux_out(44)
    );
\sig_data_reg_out[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(45),
      O => sig_data_skid_mux_out(45)
    );
\sig_data_reg_out[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(46),
      O => sig_data_skid_mux_out(46)
    );
\sig_data_reg_out[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(47),
      O => sig_data_skid_mux_out(47)
    );
\sig_data_reg_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(4),
      O => sig_data_skid_mux_out(4)
    );
\sig_data_reg_out[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(50),
      O => sig_data_skid_mux_out(50)
    );
\sig_data_reg_out[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(51),
      O => sig_data_skid_mux_out(51)
    );
\sig_data_reg_out[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(32),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(52),
      O => sig_data_skid_mux_out(52)
    );
\sig_data_reg_out[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(33),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(53),
      O => sig_data_skid_mux_out(53)
    );
\sig_data_reg_out[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(34),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(54),
      O => sig_data_skid_mux_out(54)
    );
\sig_data_reg_out[55]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(35),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(55),
      O => sig_data_skid_mux_out(55)
    );
\sig_data_reg_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(5),
      O => sig_data_skid_mux_out(5)
    );
\sig_data_reg_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(6),
      O => sig_data_skid_mux_out(6)
    );
\sig_data_reg_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => sig_s_ready_dup,
      I2 => sig_data_skid_reg(7),
      O => sig_data_skid_mux_out(7)
    );
\sig_data_reg_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(10),
      Q => \AXI_BRAM_data_i_reg[40]\(6),
      R => '0'
    );
\sig_data_reg_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(11),
      Q => \AXI_BRAM_data_i_reg[40]\(7),
      R => '0'
    );
\sig_data_reg_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(12),
      Q => \AXI_BRAM_data_i_reg[40]\(8),
      R => '0'
    );
\sig_data_reg_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(13),
      Q => \AXI_BRAM_data_i_reg[40]\(9),
      R => '0'
    );
\sig_data_reg_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(14),
      Q => \AXI_BRAM_data_i_reg[40]\(10),
      R => '0'
    );
\sig_data_reg_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(15),
      Q => \AXI_BRAM_data_i_reg[40]\(11),
      R => '0'
    );
\sig_data_reg_out_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(18),
      Q => \AXI_BRAM_data_i_reg[40]\(12),
      R => '0'
    );
\sig_data_reg_out_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(19),
      Q => \AXI_BRAM_data_i_reg[40]\(13),
      R => '0'
    );
\sig_data_reg_out_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(20),
      Q => \AXI_BRAM_data_i_reg[40]\(14),
      R => '0'
    );
\sig_data_reg_out_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(21),
      Q => \AXI_BRAM_data_i_reg[40]\(15),
      R => '0'
    );
\sig_data_reg_out_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(22),
      Q => \AXI_BRAM_data_i_reg[40]\(16),
      R => '0'
    );
\sig_data_reg_out_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(23),
      Q => \AXI_BRAM_data_i_reg[40]\(17),
      R => '0'
    );
\sig_data_reg_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(2),
      Q => \AXI_BRAM_data_i_reg[40]\(0),
      R => '0'
    );
\sig_data_reg_out_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(34),
      Q => \AXI_BRAM_data_i_reg[40]\(18),
      R => '0'
    );
\sig_data_reg_out_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(35),
      Q => \AXI_BRAM_data_i_reg[40]\(19),
      R => '0'
    );
\sig_data_reg_out_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(36),
      Q => \AXI_BRAM_data_i_reg[40]\(20),
      R => '0'
    );
\sig_data_reg_out_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(37),
      Q => \AXI_BRAM_data_i_reg[40]\(21),
      R => '0'
    );
\sig_data_reg_out_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(38),
      Q => \AXI_BRAM_data_i_reg[40]\(22),
      R => '0'
    );
\sig_data_reg_out_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(39),
      Q => \AXI_BRAM_data_i_reg[40]\(23),
      R => '0'
    );
\sig_data_reg_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(3),
      Q => \AXI_BRAM_data_i_reg[40]\(1),
      R => '0'
    );
\sig_data_reg_out_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(42),
      Q => \AXI_BRAM_data_i_reg[40]\(24),
      R => '0'
    );
\sig_data_reg_out_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(43),
      Q => \AXI_BRAM_data_i_reg[40]\(25),
      R => '0'
    );
\sig_data_reg_out_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(44),
      Q => \AXI_BRAM_data_i_reg[40]\(26),
      R => '0'
    );
\sig_data_reg_out_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(45),
      Q => \AXI_BRAM_data_i_reg[40]\(27),
      R => '0'
    );
\sig_data_reg_out_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(46),
      Q => \AXI_BRAM_data_i_reg[40]\(28),
      R => '0'
    );
\sig_data_reg_out_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(47),
      Q => \AXI_BRAM_data_i_reg[40]\(29),
      R => '0'
    );
\sig_data_reg_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(4),
      Q => \AXI_BRAM_data_i_reg[40]\(2),
      R => '0'
    );
\sig_data_reg_out_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(50),
      Q => \AXI_BRAM_data_i_reg[40]\(30),
      R => '0'
    );
\sig_data_reg_out_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(51),
      Q => \AXI_BRAM_data_i_reg[40]\(31),
      R => '0'
    );
\sig_data_reg_out_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(52),
      Q => \AXI_BRAM_data_i_reg[40]\(32),
      R => '0'
    );
\sig_data_reg_out_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(53),
      Q => \AXI_BRAM_data_i_reg[40]\(33),
      R => '0'
    );
\sig_data_reg_out_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(54),
      Q => \AXI_BRAM_data_i_reg[40]\(34),
      R => '0'
    );
\sig_data_reg_out_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(55),
      Q => \AXI_BRAM_data_i_reg[40]\(35),
      R => '0'
    );
\sig_data_reg_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(5),
      Q => \AXI_BRAM_data_i_reg[40]\(3),
      R => '0'
    );
\sig_data_reg_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(6),
      Q => \AXI_BRAM_data_i_reg[40]\(4),
      R => '0'
    );
\sig_data_reg_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => sig_data_skid_mux_out(7),
      Q => \AXI_BRAM_data_i_reg[40]\(5),
      R => '0'
    );
\sig_data_skid_reg_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(6),
      Q => sig_data_skid_reg(10),
      R => '0'
    );
\sig_data_skid_reg_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(7),
      Q => sig_data_skid_reg(11),
      R => '0'
    );
\sig_data_skid_reg_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(8),
      Q => sig_data_skid_reg(12),
      R => '0'
    );
\sig_data_skid_reg_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(9),
      Q => sig_data_skid_reg(13),
      R => '0'
    );
\sig_data_skid_reg_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(10),
      Q => sig_data_skid_reg(14),
      R => '0'
    );
\sig_data_skid_reg_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(11),
      Q => sig_data_skid_reg(15),
      R => '0'
    );
\sig_data_skid_reg_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(12),
      Q => sig_data_skid_reg(18),
      R => '0'
    );
\sig_data_skid_reg_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(13),
      Q => sig_data_skid_reg(19),
      R => '0'
    );
\sig_data_skid_reg_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(14),
      Q => sig_data_skid_reg(20),
      R => '0'
    );
\sig_data_skid_reg_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(15),
      Q => sig_data_skid_reg(21),
      R => '0'
    );
\sig_data_skid_reg_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(16),
      Q => sig_data_skid_reg(22),
      R => '0'
    );
\sig_data_skid_reg_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(17),
      Q => sig_data_skid_reg(23),
      R => '0'
    );
\sig_data_skid_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(0),
      Q => sig_data_skid_reg(2),
      R => '0'
    );
\sig_data_skid_reg_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(18),
      Q => sig_data_skid_reg(34),
      R => '0'
    );
\sig_data_skid_reg_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(19),
      Q => sig_data_skid_reg(35),
      R => '0'
    );
\sig_data_skid_reg_reg[36]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(20),
      Q => sig_data_skid_reg(36),
      R => '0'
    );
\sig_data_skid_reg_reg[37]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(21),
      Q => sig_data_skid_reg(37),
      R => '0'
    );
\sig_data_skid_reg_reg[38]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(22),
      Q => sig_data_skid_reg(38),
      R => '0'
    );
\sig_data_skid_reg_reg[39]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(23),
      Q => sig_data_skid_reg(39),
      R => '0'
    );
\sig_data_skid_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(1),
      Q => sig_data_skid_reg(3),
      R => '0'
    );
\sig_data_skid_reg_reg[42]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(24),
      Q => sig_data_skid_reg(42),
      R => '0'
    );
\sig_data_skid_reg_reg[43]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(25),
      Q => sig_data_skid_reg(43),
      R => '0'
    );
\sig_data_skid_reg_reg[44]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(26),
      Q => sig_data_skid_reg(44),
      R => '0'
    );
\sig_data_skid_reg_reg[45]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(27),
      Q => sig_data_skid_reg(45),
      R => '0'
    );
\sig_data_skid_reg_reg[46]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(28),
      Q => sig_data_skid_reg(46),
      R => '0'
    );
\sig_data_skid_reg_reg[47]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(29),
      Q => sig_data_skid_reg(47),
      R => '0'
    );
\sig_data_skid_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(2),
      Q => sig_data_skid_reg(4),
      R => '0'
    );
\sig_data_skid_reg_reg[50]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(30),
      Q => sig_data_skid_reg(50),
      R => '0'
    );
\sig_data_skid_reg_reg[51]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(31),
      Q => sig_data_skid_reg(51),
      R => '0'
    );
\sig_data_skid_reg_reg[52]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(32),
      Q => sig_data_skid_reg(52),
      R => '0'
    );
\sig_data_skid_reg_reg[53]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(33),
      Q => sig_data_skid_reg(53),
      R => '0'
    );
\sig_data_skid_reg_reg[54]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(34),
      Q => sig_data_skid_reg(54),
      R => '0'
    );
\sig_data_skid_reg_reg[55]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(35),
      Q => sig_data_skid_reg(55),
      R => '0'
    );
\sig_data_skid_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(3),
      Q => sig_data_skid_reg(5),
      R => '0'
    );
\sig_data_skid_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(4),
      Q => sig_data_skid_reg(6),
      R => '0'
    );
\sig_data_skid_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => m_axi_rdata(5),
      Q => sig_data_skid_reg(7),
      R => '0'
    );
sig_last_reg_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F20FFFF2F200000"
    )
        port map (
      I0 => sig_next_eof_reg,
      I1 => sig_last_reg_out_i_2_n_0,
      I2 => sig_s_ready_dup,
      I3 => sig_last_skid_reg,
      I4 => E(0),
      I5 => \^sig_rd2llink_strm_tlast\,
      O => sig_last_reg_out_i_1_n_0
    );
sig_last_reg_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => m_axi_rvalid,
      O => sig_last_reg_out_i_2_n_0
    );
sig_last_reg_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_last_reg_out_i_1_n_0,
      Q => \^sig_rd2llink_strm_tlast\,
      R => sig_rdwr_reset_reg_reg
    );
sig_last_skid_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => sig_s_ready_dup,
      D => sig_rdc2rdskid_tlast,
      Q => sig_last_skid_reg,
      R => sig_rdwr_reset_reg_reg
    );
sig_m_valid_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101011111111"
    )
        port map (
      I0 => sig_reset_reg,
      I1 => sig_rdwr_reset_reg_reg,
      I2 => sig_m_valid_dup,
      I3 => sig_s_ready_dup,
      I4 => sig_llink_busy_reg_0,
      I5 => \sig_addr_posted_cntr_reg[0]_0\,
      O => sig_m_valid_dup_i_1_n_0
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_m_valid_dup_i_1_n_0,
      Q => sig_m_valid_out,
      R => '0'
    );
sig_next_cmd_cmplt_reg_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sig_s_ready_out,
      I1 => m_axi_rvalid,
      I2 => \sig_addr_posted_cntr_reg[0]\,
      O => sig_next_cmd_cmplt_reg_reg
    );
sig_s_ready_dup_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFF8F8F8FFF8"
    )
        port map (
      I0 => sig_llink2cmd_rd_busy,
      I1 => IP2Bus_MstRd_dst_rdy,
      I2 => sig_reset_reg,
      I3 => sig_s_ready_dup,
      I4 => sig_m_valid_dup,
      I5 => \sig_addr_posted_cntr_reg[0]_0\,
      O => sig_s_ready_dup_i_1_n_0
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_dup,
      R => sig_rdwr_reset_reg_reg
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_s_ready_dup_i_1_n_0,
      Q => sig_s_ready_out,
      R => sig_rdwr_reset_reg_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_27 is
  port (
    m_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    sig_reset_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_27 : entity is "axi_master_burst_skid_buf";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_27;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_27 is
  signal sig_m_valid_dup : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of sig_m_valid_dup : signal is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of sig_m_valid_dup : signal is "no";
  signal \sig_m_valid_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_m_valid_out : STD_LOGIC;
  attribute RTL_KEEP of sig_m_valid_out : signal is "true";
  attribute equivalent_register_removal of sig_m_valid_out : signal is "no";
  signal sig_s_ready_dup : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_dup : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_dup : signal is "no";
  signal \sig_s_ready_dup_i_1__1_n_0\ : STD_LOGIC;
  signal sig_s_ready_out : STD_LOGIC;
  attribute RTL_KEEP of sig_s_ready_out : signal is "true";
  attribute equivalent_register_removal of sig_s_ready_out : signal is "no";
  attribute KEEP : string;
  attribute KEEP of sig_m_valid_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_dup_reg : label is "no";
  attribute KEEP of sig_m_valid_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_m_valid_out_reg : label is "no";
  attribute KEEP of sig_s_ready_dup_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_dup_reg : label is "no";
  attribute KEEP of sig_s_ready_out_reg : label is "yes";
  attribute equivalent_register_removal of sig_s_ready_out_reg : label is "no";
begin
\sig_m_valid_dup_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => sig_m_valid_dup,
      I1 => sig_reset_reg,
      I2 => \out\,
      O => \sig_m_valid_dup_i_1__1_n_0\
    );
sig_m_valid_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_dup,
      R => '0'
    );
sig_m_valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_m_valid_dup_i_1__1_n_0\,
      Q => sig_m_valid_out,
      R => '0'
    );
\sig_s_ready_dup_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_s_ready_dup,
      I1 => sig_reset_reg,
      O => \sig_s_ready_dup_i_1__1_n_0\
    );
sig_s_ready_dup_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_dup,
      R => \out\
    );
sig_s_ready_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_s_ready_dup_i_1__1_n_0\,
      Q => sig_s_ready_out,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_h_sync is
  port (
    vsync_rst : out STD_LOGIC;
    h_pix_cnt_tc : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \RED_reg[5]\ : out STD_LOGIC;
    \BRAM_TFT_addr_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_stb_d1_reg : out STD_LOGIC;
    clk_ce_pos0 : out STD_LOGIC;
    clk_ce_neg0 : out STD_LOGIC;
    HSYNC_i : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_rst : in STD_LOGIC;
    \VSYNC_cs_reg[1]\ : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    clk_stb_d1 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_h_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_h_sync is
  signal HSYNC_cs : STD_LOGIC_VECTOR ( 0 to 4 );
  signal HSYNC_ns : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \HSYNC_ns_inferred__3/i__n_0\ : STD_LOGIC;
  signal H_bp_cnt_tc2_i_1_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal H_bp_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal H_pix_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal \^red_reg[5]\ : STD_LOGIC;
  signal h_bp_cnt1 : STD_LOGIC;
  signal \h_bp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_bp_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal h_bp_cnt_tc : STD_LOGIC;
  signal h_bp_cnt_tc2 : STD_LOGIC;
  signal h_fp_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal h_fp_cnt0 : STD_LOGIC;
  signal \h_fp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_fp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal h_fp_cnt_tc : STD_LOGIC;
  signal h_fp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal h_p_cnt : STD_LOGIC_VECTOR ( 0 to 6 );
  signal h_p_cnt0 : STD_LOGIC;
  signal \h_p_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal h_p_cnt_0 : STD_LOGIC_VECTOR ( 0 to 6 );
  signal h_p_cnt_tc : STD_LOGIC;
  signal h_p_cnt_tc_i_2_n_0 : STD_LOGIC;
  signal h_p_cnt_tc_reg_n_0 : STD_LOGIC;
  signal h_pix_cnt : STD_LOGIC_VECTOR ( 0 to 10 );
  signal h_pix_cnt0 : STD_LOGIC;
  signal \h_pix_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \h_pix_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \^h_pix_cnt_tc\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDR_DE_i_2 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of FDS_HSYNC_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \HSYNC_ns_inferred__3/i_\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of H_bp_cnt_tc_i_1 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of H_pix_cnt_tc_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of clk_stb_d1_i_1 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \h_bp_cnt[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \h_bp_cnt[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \h_bp_cnt[5]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \h_fp_cnt[0]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \h_fp_cnt[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \h_fp_cnt[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of h_fp_cnt_tc_i_1 : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \h_p_cnt[0]_i_3\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \h_p_cnt[2]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \h_p_cnt[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \h_p_cnt[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \h_p_cnt[5]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of h_p_cnt_tc_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \h_pix_cnt[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \h_pix_cnt[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \h_pix_cnt[4]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \h_pix_cnt[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \h_pix_cnt[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \h_pix_cnt[8]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \h_pix_cnt[9]_i_1\ : label is "soft_lutpair46";
begin
  \RED_reg[5]\ <= \^red_reg[5]\;
  h_pix_cnt_tc <= \^h_pix_cnt_tc\;
\BRAM_TFT_addr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEFEFFE"
    )
        port map (
      I0 => tft_rst,
      I1 => \VSYNC_cs_reg[1]\,
      I2 => h_bp_cnt_tc,
      I3 => h_bp_cnt_tc2,
      I4 => \^red_reg[5]\,
      O => \BRAM_TFT_addr_reg[0]\(0)
    );
FDR_DE_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => HSYNC_cs(1),
      I1 => HSYNC_cs(3),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(0),
      O => \^red_reg[5]\
    );
FDS_HSYNC_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => HSYNC_cs(3),
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(0),
      O => HSYNC_i
    );
\HSYNC_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => h_fp_cnt_tc,
      I2 => \HSYNC_ns_inferred__3/i__n_0\,
      I3 => HSYNC_cs(1),
      I4 => \^h_pix_cnt_tc\,
      O => HSYNC_ns(0)
    );
\HSYNC_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => HSYNC_cs(1),
      I1 => \^h_pix_cnt_tc\,
      I2 => \HSYNC_ns_inferred__3/i__n_0\,
      I3 => HSYNC_cs(2),
      I4 => h_bp_cnt_tc,
      O => HSYNC_ns(1)
    );
\HSYNC_cs[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => HSYNC_cs(2),
      I1 => h_bp_cnt_tc,
      I2 => \HSYNC_ns_inferred__3/i__n_0\,
      I3 => HSYNC_cs(3),
      I4 => h_p_cnt_tc_reg_n_0,
      O => HSYNC_ns(2)
    );
\HSYNC_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF44400000000"
    )
        port map (
      I0 => h_p_cnt_tc_reg_n_0,
      I1 => HSYNC_cs(3),
      I2 => h_fp_cnt_tc,
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(4),
      I5 => \HSYNC_ns_inferred__3/i__n_0\,
      O => HSYNC_ns(3)
    );
\HSYNC_cs[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \HSYNC_ns_inferred__3/i__n_0\,
      O => HSYNC_ns(4)
    );
\HSYNC_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(0),
      Q => HSYNC_cs(0),
      R => tft_rst
    );
\HSYNC_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(1),
      Q => HSYNC_cs(1),
      R => tft_rst
    );
\HSYNC_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(2),
      Q => HSYNC_cs(2),
      R => tft_rst
    );
\HSYNC_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(3),
      Q => HSYNC_cs(3),
      R => tft_rst
    );
\HSYNC_cs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => HSYNC_ns(4),
      Q => HSYNC_cs(4),
      S => tft_rst
    );
\HSYNC_ns_inferred__3/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => HSYNC_cs(4),
      I1 => HSYNC_cs(3),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(0),
      O => \HSYNC_ns_inferred__3/i__n_0\
    );
H_bp_cnt_tc2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[4]\,
      I1 => \h_bp_cnt_reg_n_0_[5]\,
      I2 => \h_bp_cnt_reg_n_0_[3]\,
      I3 => \h_bp_cnt_reg_n_0_[2]\,
      I4 => \h_bp_cnt_reg_n_0_[0]\,
      I5 => \h_bp_cnt_reg_n_0_[1]\,
      O => H_bp_cnt_tc2_i_1_n_0
    );
H_bp_cnt_tc2_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_bp_cnt_tc2_i_1_n_0,
      Q => h_bp_cnt_tc2,
      R => h_bp_cnt1
    );
H_bp_cnt_tc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => H_bp_cnt_tc_i_2_n_0,
      I1 => \h_bp_cnt_reg_n_0_[4]\,
      I2 => \h_bp_cnt_reg_n_0_[5]\,
      I3 => h_bp_cnt1,
      O => H_bp_cnt_tc_i_1_n_0
    );
H_bp_cnt_tc_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[1]\,
      I1 => \h_bp_cnt_reg_n_0_[0]\,
      I2 => \h_bp_cnt_reg_n_0_[2]\,
      I3 => \h_bp_cnt_reg_n_0_[3]\,
      O => H_bp_cnt_tc_i_2_n_0
    );
H_bp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_bp_cnt_tc_i_1_n_0,
      Q => h_bp_cnt_tc,
      R => '0'
    );
H_pix_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00280008"
    )
        port map (
      I0 => H_pix_cnt_tc_i_2_n_0,
      I1 => h_pix_cnt(9),
      I2 => h_pix_cnt(10),
      I3 => \h_pix_cnt[2]_i_2_n_0\,
      I4 => \^h_pix_cnt_tc\,
      O => H_pix_cnt_tc_i_1_n_0
    );
H_pix_cnt_tc_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => h_pix_cnt(3),
      I1 => h_pix_cnt(1),
      I2 => h_pix_cnt(2),
      I3 => h_pix_cnt(4),
      I4 => h_pix_cnt(0),
      O => H_pix_cnt_tc_i_2_n_0
    );
H_pix_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => H_pix_cnt_tc_i_1_n_0,
      Q => \^h_pix_cnt_tc\,
      R => h_pix_cnt0
    );
\RED[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^red_reg[5]\,
      I1 => h_bp_cnt_tc,
      I2 => \VSYNC_cs_reg[1]\,
      I3 => scndry_out,
      I4 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\,
      I5 => \out\,
      O => SR(0)
    );
VSYNC_Rst_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => tft_rst,
      Q => vsync_rst,
      R => '0'
    );
clk_ce_neg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00000000"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      I5 => clk_stb_d1,
      O => clk_ce_neg0
    );
clk_ce_pos_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      I5 => clk_stb_d1,
      O => clk_ce_pos0
    );
clk_stb_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      O => clk_stb_d1_reg
    );
\h_bp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => HSYNC_cs(3),
      I1 => HSYNC_cs(1),
      I2 => HSYNC_cs(0),
      I3 => HSYNC_cs(4),
      I4 => HSYNC_cs(2),
      I5 => tft_rst,
      O => h_bp_cnt1
    );
\h_bp_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F80FF00FF00FF00"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[5]\,
      I1 => \h_bp_cnt_reg_n_0_[4]\,
      I2 => \h_bp_cnt_reg_n_0_[1]\,
      I3 => \h_bp_cnt_reg_n_0_[0]\,
      I4 => \h_bp_cnt_reg_n_0_[2]\,
      I5 => \h_bp_cnt_reg_n_0_[3]\,
      O => \h_bp_cnt[0]_i_2_n_0\
    );
\h_bp_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07080F000F000F00"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[3]\,
      I1 => \h_bp_cnt_reg_n_0_[2]\,
      I2 => h_bp_cnt1,
      I3 => \h_bp_cnt_reg_n_0_[1]\,
      I4 => \h_bp_cnt_reg_n_0_[4]\,
      I5 => \h_bp_cnt_reg_n_0_[5]\,
      O => \h_bp_cnt[1]_i_1_n_0\
    );
\h_bp_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78F0"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[5]\,
      I1 => \h_bp_cnt_reg_n_0_[4]\,
      I2 => \h_bp_cnt_reg_n_0_[2]\,
      I3 => \h_bp_cnt_reg_n_0_[3]\,
      O => \h_bp_cnt[2]_i_1_n_0\
    );
\h_bp_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[5]\,
      I1 => \h_bp_cnt_reg_n_0_[4]\,
      I2 => \h_bp_cnt_reg_n_0_[3]\,
      O => \h_bp_cnt[3]_i_1_n_0\
    );
\h_bp_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \h_bp_cnt_reg_n_0_[5]\,
      I1 => \h_bp_cnt_reg_n_0_[4]\,
      O => \h_bp_cnt[4]_i_1_n_0\
    );
\h_bp_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_bp_cnt1,
      I1 => \h_bp_cnt_reg_n_0_[5]\,
      O => \h_bp_cnt[5]_i_1_n_0\
    );
\h_bp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[0]_i_2_n_0\,
      Q => \h_bp_cnt_reg_n_0_[0]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[1]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[1]\,
      R => '0'
    );
\h_bp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[2]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[2]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[3]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[3]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[4]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[4]\,
      R => h_bp_cnt1
    );
\h_bp_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_bp_cnt[5]_i_1_n_0\,
      Q => \h_bp_cnt_reg_n_0_[5]\,
      R => '0'
    );
\h_fp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAABAAABAABE"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(0),
      I4 => HSYNC_cs(1),
      I5 => HSYNC_cs(3),
      O => h_fp_cnt0
    );
\h_fp_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(0),
      I2 => h_fp_cnt(3),
      I3 => h_fp_cnt(1),
      O => \h_fp_cnt[0]_i_2_n_0\
    );
\h_fp_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(3),
      I2 => h_fp_cnt(1),
      O => \h_fp_cnt[1]_i_1_n_0\
    );
\h_fp_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_fp_cnt(2),
      I1 => h_fp_cnt(3),
      O => \h_fp_cnt[2]_i_1_n_0\
    );
\h_fp_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_fp_cnt(3),
      O => \h_fp_cnt[3]_i_1_n_0\
    );
\h_fp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[0]_i_2_n_0\,
      Q => h_fp_cnt(0),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[1]_i_1_n_0\,
      Q => h_fp_cnt(1),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[2]_i_1_n_0\,
      Q => h_fp_cnt(2),
      R => h_fp_cnt0
    );
\h_fp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_fp_cnt[3]_i_1_n_0\,
      Q => h_fp_cnt(3),
      R => h_fp_cnt0
    );
h_fp_cnt_tc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => h_fp_cnt(1),
      I1 => h_fp_cnt(3),
      I2 => h_fp_cnt(0),
      I3 => h_fp_cnt(2),
      O => h_fp_cnt_tc_i_1_n_0
    );
h_fp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_fp_cnt_tc_i_1_n_0,
      Q => h_fp_cnt_tc,
      R => h_fp_cnt0
    );
\h_p_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => HSYNC_cs(0),
      I1 => HSYNC_cs(4),
      I2 => HSYNC_cs(2),
      I3 => HSYNC_cs(1),
      I4 => HSYNC_cs(3),
      I5 => tft_rst,
      O => h_p_cnt0
    );
\h_p_cnt[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => h_p_cnt(1),
      I1 => \h_p_cnt[0]_i_3_n_0\,
      I2 => h_p_cnt(0),
      O => h_p_cnt_0(0)
    );
\h_p_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(5),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(2),
      O => \h_p_cnt[0]_i_3_n_0\
    );
\h_p_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => h_p_cnt(2),
      I1 => h_p_cnt(4),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(5),
      I4 => h_p_cnt(3),
      I5 => h_p_cnt(1),
      O => h_p_cnt_0(1)
    );
\h_p_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(5),
      I2 => h_p_cnt(6),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(2),
      O => h_p_cnt_0(2)
    );
\h_p_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => h_p_cnt(4),
      I1 => h_p_cnt(6),
      I2 => h_p_cnt(5),
      I3 => h_p_cnt(3),
      O => h_p_cnt_0(3)
    );
\h_p_cnt[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => h_p_cnt(5),
      I1 => h_p_cnt(6),
      I2 => h_p_cnt(4),
      O => h_p_cnt_0(4)
    );
\h_p_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_p_cnt(6),
      I1 => h_p_cnt(5),
      O => h_p_cnt_0(5)
    );
\h_p_cnt[6]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_p_cnt(6),
      O => h_p_cnt_0(6)
    );
\h_p_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(0),
      Q => h_p_cnt(0),
      R => h_p_cnt0
    );
\h_p_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(1),
      Q => h_p_cnt(1),
      R => h_p_cnt0
    );
\h_p_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(2),
      Q => h_p_cnt(2),
      R => h_p_cnt0
    );
\h_p_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(3),
      Q => h_p_cnt(3),
      R => h_p_cnt0
    );
\h_p_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(4),
      Q => h_p_cnt(4),
      R => h_p_cnt0
    );
\h_p_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(5),
      Q => h_p_cnt(5),
      R => h_p_cnt0
    );
\h_p_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_0(6),
      Q => h_p_cnt(6),
      R => h_p_cnt0
    );
h_p_cnt_tc_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => h_p_cnt_tc_i_2_n_0,
      I1 => h_p_cnt(6),
      O => h_p_cnt_tc
    );
h_p_cnt_tc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => h_p_cnt(3),
      I1 => h_p_cnt(2),
      I2 => h_p_cnt(5),
      I3 => h_p_cnt(4),
      I4 => h_p_cnt(1),
      I5 => h_p_cnt(0),
      O => h_p_cnt_tc_i_2_n_0
    );
h_p_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => h_p_cnt_tc,
      Q => h_p_cnt_tc_reg_n_0,
      R => h_p_cnt0
    );
\h_pix_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => tft_rst,
      I1 => HSYNC_cs(0),
      I2 => HSYNC_cs(4),
      I3 => HSYNC_cs(2),
      I4 => HSYNC_cs(3),
      I5 => HSYNC_cs(1),
      O => h_pix_cnt0
    );
\h_pix_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_pix_cnt(0),
      I1 => h_pix_cnt(2),
      I2 => h_pix_cnt(4),
      I3 => \h_pix_cnt[0]_i_3_n_0\,
      I4 => h_pix_cnt(3),
      I5 => h_pix_cnt(1),
      O => \h_pix_cnt[0]_i_2_n_0\
    );
\h_pix_cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => h_pix_cnt(10),
      I1 => h_pix_cnt(9),
      I2 => h_pix_cnt(5),
      I3 => h_pix_cnt(6),
      I4 => h_pix_cnt(7),
      I5 => h_pix_cnt(8),
      O => \h_pix_cnt[0]_i_3_n_0\
    );
\h_pix_cnt[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => h_pix_cnt(10),
      O => \h_pix_cnt[10]_i_1_n_0\
    );
\h_pix_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => h_pix_cnt(1),
      I1 => h_pix_cnt(3),
      I2 => \h_pix_cnt[0]_i_3_n_0\,
      I3 => h_pix_cnt(4),
      I4 => h_pix_cnt(2),
      O => \h_pix_cnt[1]_i_1_n_0\
    );
\h_pix_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6AAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_pix_cnt(2),
      I1 => h_pix_cnt(4),
      I2 => \h_pix_cnt[2]_i_2_n_0\,
      I3 => h_pix_cnt(9),
      I4 => h_pix_cnt(10),
      I5 => h_pix_cnt(3),
      O => \h_pix_cnt[2]_i_1_n_0\
    );
\h_pix_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => h_pix_cnt(8),
      I1 => h_pix_cnt(7),
      I2 => h_pix_cnt(6),
      I3 => h_pix_cnt(5),
      O => \h_pix_cnt[2]_i_2_n_0\
    );
\h_pix_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAAAA"
    )
        port map (
      I0 => h_pix_cnt(3),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(9),
      I3 => \h_pix_cnt[2]_i_2_n_0\,
      I4 => h_pix_cnt(4),
      O => \h_pix_cnt[3]_i_1_n_0\
    );
\h_pix_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA6AAAAAAA"
    )
        port map (
      I0 => h_pix_cnt(4),
      I1 => h_pix_cnt(8),
      I2 => h_pix_cnt(7),
      I3 => h_pix_cnt(6),
      I4 => h_pix_cnt(5),
      I5 => \h_pix_cnt[4]_i_2_n_0\,
      O => \h_pix_cnt[4]_i_1_n_0\
    );
\h_pix_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => h_pix_cnt(9),
      I1 => h_pix_cnt(10),
      O => \h_pix_cnt[4]_i_2_n_0\
    );
\h_pix_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => h_pix_cnt(5),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(9),
      I3 => h_pix_cnt(8),
      I4 => h_pix_cnt(7),
      I5 => h_pix_cnt(6),
      O => \h_pix_cnt[5]_i_1_n_0\
    );
\h_pix_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => h_pix_cnt(10),
      I1 => h_pix_cnt(9),
      I2 => h_pix_cnt(8),
      I3 => h_pix_cnt(7),
      I4 => h_pix_cnt(6),
      O => \h_pix_cnt[6]_i_1_n_0\
    );
\h_pix_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => h_pix_cnt(7),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(9),
      I3 => h_pix_cnt(8),
      O => \h_pix_cnt[7]_i_1_n_0\
    );
\h_pix_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => h_pix_cnt(8),
      I1 => h_pix_cnt(10),
      I2 => h_pix_cnt(9),
      O => \h_pix_cnt[8]_i_1_n_0\
    );
\h_pix_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => h_pix_cnt(9),
      I1 => h_pix_cnt(10),
      O => \h_pix_cnt[9]_i_1_n_0\
    );
\h_pix_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[0]_i_2_n_0\,
      Q => h_pix_cnt(0),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[10]_i_1_n_0\,
      Q => h_pix_cnt(10),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[1]_i_1_n_0\,
      Q => h_pix_cnt(1),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[2]_i_1_n_0\,
      Q => h_pix_cnt(2),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[3]_i_1_n_0\,
      Q => h_pix_cnt(3),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[4]_i_1_n_0\,
      Q => h_pix_cnt(4),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[5]_i_1_n_0\,
      Q => h_pix_cnt(5),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[6]_i_1_n_0\,
      Q => h_pix_cnt(6),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[7]_i_1_n_0\,
      Q => h_pix_cnt(7),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[8]_i_1_n_0\,
      Q => h_pix_cnt(8),
      R => h_pix_cnt0
    );
\h_pix_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \h_pix_cnt[9]_i_1_n_0\,
      Q => h_pix_cnt(9),
      R => h_pix_cnt0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_slave_register is
  port (
    TFT_iic_xfer : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 26 downto 0 );
    bus2ip_rdce_d2_reg_0 : out STD_LOGIC;
    bus2ip_rdce_d2 : out STD_LOGIC;
    bus2ip_wrce_d2_reg_0 : out STD_LOGIC;
    bus2ip_wrce_d2 : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    \IP2Bus_Data_reg[31]_0\ : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \IP2Bus_Data_reg[16]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    bus2ip_sreset : in STD_LOGIC;
    tft_status_i : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg_reg : in STD_LOGIC;
    bus2ip_sreset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    Bus_RNW_reg_reg_2 : in STD_LOGIC;
    Bus_RNW_reg_reg_3 : in STD_LOGIC;
    Bus_RNW_reg_reg_4 : in STD_LOGIC;
    Bus_RNW_reg_reg_5 : in STD_LOGIC;
    Bus_RNW_reg_reg_6 : in STD_LOGIC;
    Bus_RNW_reg_reg_7 : in STD_LOGIC;
    Bus_RNW_reg_reg_8 : in STD_LOGIC;
    Bus_RNW_reg_reg_9 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ : in STD_LOGIC;
    TFT_iic_xfer_reg_0 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_10 : in STD_LOGIC;
    bus2ip_sreset_reg_0 : in STD_LOGIC;
    bus2ip_rdce_or : in STD_LOGIC;
    bus2ip_wrce_or : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 26 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_slave_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_slave_register is
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\ : STD_LOGIC;
  signal TFT_iic_reg_data : STD_LOGIC_VECTOR ( 7 to 7 );
  signal TFT_status_reg : STD_LOGIC;
  signal TFT_status_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus2ip_rdce_d2\ : STD_LOGIC;
  signal \^bus2ip_rdce_d2_reg_0\ : STD_LOGIC;
  signal \^bus2ip_wrce_d2\ : STD_LOGIC;
  signal \^bus2ip_wrce_d2_reg_0\ : STD_LOGIC;
  signal tft_status_d1 : STD_LOGIC;
  signal tft_status_d2 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair75";
begin
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\;
  bus2ip_rdce_d2 <= \^bus2ip_rdce_d2\;
  bus2ip_rdce_d2_reg_0 <= \^bus2ip_rdce_d2_reg_0\;
  bus2ip_wrce_d2 <= \^bus2ip_wrce_d2\;
  bus2ip_wrce_d2_reg_0 <= \^bus2ip_wrce_d2_reg_0\;
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22F2FFFF"
    )
        port map (
      I0 => \^bus2ip_wrce_d2_reg_0\,
      I1 => \^bus2ip_wrce_d2\,
      I2 => \^bus2ip_rdce_d2_reg_0\,
      I3 => \^bus2ip_rdce_d2\,
      I4 => s_axi_aresetn,
      O => cs_ce_clr
    );
\IP2Bus_Data[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFAA00CFFFC000"
    )
        port map (
      I0 => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      I1 => TFT_status_reg,
      I2 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I3 => Bus_RNW_reg,
      I4 => TFT_iic_reg_data(7),
      I5 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      O => \IP2Bus_Data_reg[31]_0\
    );
\IP2Bus_Data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_iic_xfer_reg_0,
      Q => D(26),
      R => '0'
    );
\IP2Bus_Data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_9,
      Q => D(16),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\,
      Q => D(15),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\,
      Q => D(14),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\,
      Q => D(13),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\,
      Q => D(12),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_0,
      Q => D(25),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\,
      Q => D(11),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\,
      Q => D(10),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\,
      Q => D(9),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\,
      Q => D(8),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\,
      Q => D(7),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\,
      Q => D(6),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\,
      Q => D(5),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\,
      Q => D(4),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      Q => D(3),
      R => '0'
    );
\IP2Bus_Data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\,
      Q => D(2),
      R => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\
    );
\IP2Bus_Data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_1,
      Q => D(24),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_10,
      Q => D(1),
      R => '0'
    );
\IP2Bus_Data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_sreset_reg_0,
      Q => D(0),
      R => '0'
    );
\IP2Bus_Data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_2,
      Q => D(23),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_3,
      Q => D(22),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_4,
      Q => D(21),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_5,
      Q => D(20),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_6,
      Q => D(19),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_7,
      Q => D(18),
      R => bus2ip_sreset_reg
    );
\IP2Bus_Data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_8,
      Q => D(17),
      R => bus2ip_sreset_reg
    );
\TFT_base_addr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(26),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(10),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(16),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(0),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(25),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(9),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(24),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(8),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(23),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(7),
      S => bus2ip_sreset
    );
\TFT_base_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(22),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(6),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(21),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(5),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(20),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(4),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(19),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(18),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(2),
      R => bus2ip_sreset
    );
\TFT_base_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(2),
      D => s_axi_wdata(17),
      Q => \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(1),
      R => bus2ip_sreset
    );
TFT_dps_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\,
      Q => tft_dps,
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(15),
      Q => \IP2Bus_Data_reg[16]_0\(7),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(14),
      Q => \IP2Bus_Data_reg[16]_0\(6),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(13),
      Q => \IP2Bus_Data_reg[16]_0\(5),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(12),
      Q => \IP2Bus_Data_reg[16]_0\(4),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(11),
      Q => \IP2Bus_Data_reg[16]_0\(3),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(10),
      Q => \IP2Bus_Data_reg[16]_0\(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(9),
      Q => \IP2Bus_Data_reg[16]_0\(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(8),
      Q => \IP2Bus_Data_reg[16]_0\(0),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(7),
      Q => Q(6),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(6),
      Q => Q(5),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(5),
      Q => Q(4),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(4),
      Q => Q(3),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(3),
      Q => Q(2),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(2),
      Q => Q(1),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(1),
      Q => Q(0),
      R => bus2ip_sreset
    );
\TFT_iic_reg_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => s_axi_wdata(0),
      Q => TFT_iic_reg_data(7),
      R => bus2ip_sreset
    );
TFT_iic_xfer_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => bus2ip_wrce(0),
      D => Bus_RNW_reg_reg,
      Q => TFT_iic_xfer,
      R => bus2ip_sreset
    );
TFT_intr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      Q => prmry_in,
      R => bus2ip_sreset
    );
TFT_on_reg_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\,
      Q => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      S => bus2ip_sreset
    );
TFT_status_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FE0E"
    )
        port map (
      I0 => TFT_status_reg,
      I1 => tft_status_d2,
      I2 => bus2ip_wrce(1),
      I3 => s_axi_wdata(0),
      I4 => bus2ip_wrce(2),
      I5 => bus2ip_sreset,
      O => TFT_status_reg_i_1_n_0
    );
TFT_status_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => TFT_status_reg_i_1_n_0,
      Q => TFT_status_reg,
      R => '0'
    );
bus2ip_rdce_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rdce_or,
      Q => \^bus2ip_rdce_d2_reg_0\,
      R => bus2ip_sreset
    );
bus2ip_rdce_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bus2ip_rdce_d2_reg_0\,
      Q => \^bus2ip_rdce_d2\,
      R => bus2ip_sreset
    );
bus2ip_wrce_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_wrce_or,
      Q => \^bus2ip_wrce_d2_reg_0\,
      R => bus2ip_sreset
    );
bus2ip_wrce_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^bus2ip_wrce_d2_reg_0\,
      Q => \^bus2ip_wrce_d2\,
      R => bus2ip_sreset
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus2ip_rdce_d2_reg_0\,
      I1 => \^bus2ip_rdce_d2\,
      O => s_axi_arready
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus2ip_wrce_d2_reg_0\,
      I1 => \^bus2ip_wrce_d2\,
      O => s_axi_wready
    );
tft_status_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tft_status_i,
      Q => tft_status_d1,
      R => bus2ip_sreset
    );
tft_status_d2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => tft_status_d1,
      Q => tft_status_d2,
      R => bus2ip_sreset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_interface is
  port (
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_rst : in STD_LOGIC;
    \RED_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    C0 : in STD_LOGIC;
    \GREEN_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \BLUE_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    HSYNC_i : in STD_LOGIC;
    VSYNC_i : in STD_LOGIC;
    DE_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_interface;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_interface is
  signal \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FDR_DE : label is "FDR";
  attribute box_type : string;
  attribute box_type of FDR_DE : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FDS_HSYNC : label is "FDS";
  attribute box_type of FDS_HSYNC : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of FDS_VSYNC : label is "FDS";
  attribute box_type of FDS_VSYNC : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_B5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_B5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_G5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_G5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R0\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R0\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R1\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R2\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R3\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R4\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gen_vga_if.FDR_R5\ : label is "FDR";
  attribute box_type of \gen_vga_if.FDR_R5\ : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of \gen_vga_if.gen_7s.TFT_CLK_ODDR\ : label is "FALSE";
  attribute box_type of \gen_vga_if.gen_7s.TFT_CLK_ODDR\ : label is "PRIMITIVE";
begin
FDR_DE: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => DE_i,
      Q => tft_de,
      R => tft_rst
    );
FDS_HSYNC: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => C0,
      CE => '1',
      D => HSYNC_i,
      Q => tft_hsync,
      S => tft_rst
    );
FDS_VSYNC: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => C0,
      CE => '1',
      D => VSYNC_i,
      Q => tft_vsync,
      S => tft_rst
    );
\gen_vga_if.FDR_B0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(0),
      Q => tft_vga_b(0),
      R => tft_rst
    );
\gen_vga_if.FDR_B1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(1),
      Q => tft_vga_b(1),
      R => tft_rst
    );
\gen_vga_if.FDR_B2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(2),
      Q => tft_vga_b(2),
      R => tft_rst
    );
\gen_vga_if.FDR_B3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(3),
      Q => tft_vga_b(3),
      R => tft_rst
    );
\gen_vga_if.FDR_B4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(4),
      Q => tft_vga_b(4),
      R => tft_rst
    );
\gen_vga_if.FDR_B5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \BLUE_reg[5]\(5),
      Q => tft_vga_b(5),
      R => tft_rst
    );
\gen_vga_if.FDR_G0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(0),
      Q => tft_vga_g(0),
      R => tft_rst
    );
\gen_vga_if.FDR_G1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(1),
      Q => tft_vga_g(1),
      R => tft_rst
    );
\gen_vga_if.FDR_G2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(2),
      Q => tft_vga_g(2),
      R => tft_rst
    );
\gen_vga_if.FDR_G3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(3),
      Q => tft_vga_g(3),
      R => tft_rst
    );
\gen_vga_if.FDR_G4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(4),
      Q => tft_vga_g(4),
      R => tft_rst
    );
\gen_vga_if.FDR_G5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \GREEN_reg[5]\(5),
      Q => tft_vga_g(5),
      R => tft_rst
    );
\gen_vga_if.FDR_R0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(0),
      Q => tft_vga_r(0),
      R => tft_rst
    );
\gen_vga_if.FDR_R1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(1),
      Q => tft_vga_r(1),
      R => tft_rst
    );
\gen_vga_if.FDR_R2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(2),
      Q => tft_vga_r(2),
      R => tft_rst
    );
\gen_vga_if.FDR_R3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(3),
      Q => tft_vga_r(3),
      R => tft_rst
    );
\gen_vga_if.FDR_R4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(4),
      Q => tft_vga_r(4),
      R => tft_rst
    );
\gen_vga_if.FDR_R5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => C0,
      CE => '1',
      D => \RED_reg[5]\(5),
      Q => tft_vga_r(5),
      R => tft_rst
    );
\gen_vga_if.gen_7s.TFT_CLK_ODDR\: unisim.vcomponents.ODDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D1 => '0',
      D2 => '1',
      Q => tft_vga_clk,
      R => tft_rst,
      S => \NLW_gen_vga_if.gen_7s.TFT_CLK_ODDR_S_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_v_sync is
  port (
    clk_stb_d1 : out STD_LOGIC;
    prmry_in_xored : out STD_LOGIC;
    prmry_in_xored_0 : out STD_LOGIC;
    get_line_start : out STD_LOGIC;
    get_line_start_d1_reg : out STD_LOGIC;
    DE_i : out STD_LOGIC;
    VSYNC_i : out STD_LOGIC;
    \HSYNC_cs_reg[0]\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    clk_ce_neg0 : in STD_LOGIC;
    clk_ce_pos0 : in STD_LOGIC;
    p_in_d1_cdc_from : in STD_LOGIC;
    p_in_d1_cdc_from_1 : in STD_LOGIC;
    \HSYNC_cs_reg[1]\ : in STD_LOGIC;
    h_pix_cnt_tc : in STD_LOGIC;
    vsync_rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_v_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_v_sync is
  signal VSYNC_cs : STD_LOGIC_VECTOR ( 0 to 4 );
  signal VSYNC_ns : STD_LOGIC_VECTOR ( 0 to 4 );
  signal \VSYNC_ns_inferred__3/i__n_0\ : STD_LOGIC;
  signal V_bp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal V_l_cnt_tc : STD_LOGIC;
  signal V_p_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal clk_ce_neg : STD_LOGIC;
  signal clk_ce_pos : STD_LOGIC;
  signal \^get_line_start_d1_reg\ : STD_LOGIC;
  signal v_bp_cnt : STD_LOGIC_VECTOR ( 0 to 4 );
  signal v_bp_cnt0 : STD_LOGIC;
  signal \v_bp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_bp_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal v_bp_cnt_tc : STD_LOGIC;
  signal v_fp_cnt : STD_LOGIC_VECTOR ( 0 to 3 );
  signal v_fp_cnt0 : STD_LOGIC;
  signal \v_fp_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_fp_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal v_fp_cnt_tc : STD_LOGIC;
  signal v_fp_cnt_tc_i_1_n_0 : STD_LOGIC;
  signal v_l_cnt : STD_LOGIC_VECTOR ( 0 to 8 );
  signal v_l_cnt0 : STD_LOGIC;
  signal \v_l_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal v_l_cnt_0 : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \^v_l_cnt_tc\ : STD_LOGIC;
  signal v_p_cnt : STD_LOGIC_VECTOR ( 0 to 1 );
  signal v_p_cnt0 : STD_LOGIC;
  signal \v_p_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_p_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal v_p_cnt_tc : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDS_VSYNC_i_1 : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \VSYNC_ns_inferred__3/i_\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of V_bp_cnt_tc_i_1 : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of V_l_cnt_tc_i_1 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of V_p_cnt_tc_i_1 : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \v_bp_cnt[0]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \v_bp_cnt[1]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \v_bp_cnt[2]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \v_bp_cnt[3]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \v_bp_cnt[4]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \v_fp_cnt[0]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \v_fp_cnt[1]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \v_fp_cnt[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of v_fp_cnt_tc_i_1 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \v_l_cnt[0]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \v_l_cnt[0]_i_3\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \v_l_cnt[1]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \v_l_cnt[2]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \v_l_cnt[4]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \v_l_cnt[5]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \v_l_cnt[6]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \v_l_cnt[7]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \v_l_cnt[8]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \v_p_cnt[0]_i_1\ : label is "soft_lutpair78";
begin
  get_line_start_d1_reg <= \^get_line_start_d1_reg\;
\BRAM_TFT_addr[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => VSYNC_cs(1),
      I1 => VSYNC_cs(3),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(4),
      I4 => VSYNC_cs(0),
      O => \^get_line_start_d1_reg\
    );
FDR_DE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => VSYNC_cs(0),
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(3),
      I4 => VSYNC_cs(1),
      I5 => \HSYNC_cs_reg[1]\,
      O => DE_i
    );
FDS_VSYNC_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => VSYNC_cs(3),
      I1 => VSYNC_cs(1),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(4),
      I4 => VSYNC_cs(0),
      O => VSYNC_i
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_p_cnt_tc,
      I1 => p_in_d1_cdc_from,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_bp_cnt_tc,
      I1 => p_in_d1_cdc_from_1,
      O => prmry_in_xored_0
    );
\VSYNC_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => VSYNC_cs(0),
      I1 => v_fp_cnt_tc,
      I2 => \VSYNC_ns_inferred__3/i__n_0\,
      I3 => VSYNC_cs(1),
      I4 => \^v_l_cnt_tc\,
      O => VSYNC_ns(0)
    );
\VSYNC_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => VSYNC_cs(1),
      I1 => \^v_l_cnt_tc\,
      I2 => \VSYNC_ns_inferred__3/i__n_0\,
      I3 => VSYNC_cs(2),
      I4 => v_bp_cnt_tc,
      O => VSYNC_ns(1)
    );
\VSYNC_cs[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0202020"
    )
        port map (
      I0 => VSYNC_cs(2),
      I1 => v_bp_cnt_tc,
      I2 => \VSYNC_ns_inferred__3/i__n_0\,
      I3 => VSYNC_cs(3),
      I4 => v_p_cnt_tc,
      O => VSYNC_ns(2)
    );
\VSYNC_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF44400000000"
    )
        port map (
      I0 => v_p_cnt_tc,
      I1 => VSYNC_cs(3),
      I2 => v_fp_cnt_tc,
      I3 => VSYNC_cs(0),
      I4 => VSYNC_cs(4),
      I5 => \VSYNC_ns_inferred__3/i__n_0\,
      O => VSYNC_ns(3)
    );
\VSYNC_cs[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \VSYNC_ns_inferred__3/i__n_0\,
      O => VSYNC_ns(4)
    );
\VSYNC_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(0),
      Q => VSYNC_cs(0),
      R => vsync_rst
    );
\VSYNC_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(1),
      Q => VSYNC_cs(1),
      R => vsync_rst
    );
\VSYNC_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(2),
      Q => VSYNC_cs(2),
      R => vsync_rst
    );
\VSYNC_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(3),
      Q => VSYNC_cs(3),
      R => vsync_rst
    );
\VSYNC_cs_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_pos,
      D => VSYNC_ns(4),
      Q => VSYNC_cs(4),
      S => vsync_rst
    );
\VSYNC_ns_inferred__3/i_\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
        port map (
      I0 => VSYNC_cs(4),
      I1 => VSYNC_cs(3),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(0),
      O => \VSYNC_ns_inferred__3/i__n_0\
    );
V_bp_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => v_bp_cnt(4),
      I1 => v_bp_cnt(3),
      I2 => v_bp_cnt(0),
      I3 => v_bp_cnt(1),
      I4 => v_bp_cnt(2),
      O => V_bp_cnt_tc_i_1_n_0
    );
V_bp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => V_bp_cnt_tc_i_1_n_0,
      Q => v_bp_cnt_tc,
      R => v_bp_cnt0
    );
V_l_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \v_l_cnt[0]_i_3_n_0\,
      I1 => v_l_cnt(3),
      I2 => v_l_cnt(0),
      I3 => v_l_cnt(2),
      I4 => v_l_cnt(1),
      O => V_l_cnt_tc
    );
V_l_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => V_l_cnt_tc,
      Q => \^v_l_cnt_tc\,
      R => v_l_cnt0
    );
V_p_cnt_tc_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002E22"
    )
        port map (
      I0 => v_p_cnt_tc,
      I1 => clk_ce_neg,
      I2 => v_p_cnt(0),
      I3 => v_p_cnt(1),
      I4 => v_p_cnt0,
      O => V_p_cnt_tc_i_1_n_0
    );
V_p_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => V_p_cnt_tc_i_1_n_0,
      Q => v_p_cnt_tc,
      R => '0'
    );
clk_ce_neg_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => clk_ce_neg0,
      Q => clk_ce_neg,
      R => '0'
    );
clk_ce_pos_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => clk_ce_pos0,
      Q => clk_ce_pos,
      R => '0'
    );
clk_stb_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \HSYNC_cs_reg[0]\,
      Q => clk_stb_d1,
      R => '0'
    );
get_line_start_d1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF010000"
    )
        port map (
      I0 => \^get_line_start_d1_reg\,
      I1 => \^v_l_cnt_tc\,
      I2 => \HSYNC_cs_reg[1]\,
      I3 => v_bp_cnt_tc,
      I4 => h_pix_cnt_tc,
      O => get_line_start
    );
\v_bp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => VSYNC_cs(4),
      I1 => VSYNC_cs(0),
      I2 => VSYNC_cs(3),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(2),
      I5 => vsync_rst,
      O => v_bp_cnt0
    );
\v_bp_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F0F0F0"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(1),
      I2 => v_bp_cnt(0),
      I3 => v_bp_cnt(3),
      I4 => v_bp_cnt(4),
      O => \v_bp_cnt[0]_i_2_n_0\
    );
\v_bp_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6CCC"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(1),
      I2 => v_bp_cnt(3),
      I3 => v_bp_cnt(4),
      O => \v_bp_cnt[1]_i_1_n_0\
    );
\v_bp_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_bp_cnt(2),
      I1 => v_bp_cnt(3),
      I2 => v_bp_cnt(4),
      O => \v_bp_cnt[2]_i_1_n_0\
    );
\v_bp_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_bp_cnt(3),
      I1 => v_bp_cnt(4),
      O => \v_bp_cnt[3]_i_1_n_0\
    );
\v_bp_cnt[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_bp_cnt(4),
      O => \v_bp_cnt[4]_i_1_n_0\
    );
\v_bp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[0]_i_2_n_0\,
      Q => v_bp_cnt(0),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[1]_i_1_n_0\,
      Q => v_bp_cnt(1),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[2]_i_1_n_0\,
      Q => v_bp_cnt(2),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[3]_i_1_n_0\,
      Q => v_bp_cnt(3),
      R => v_bp_cnt0
    );
\v_bp_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_bp_cnt[4]_i_1_n_0\,
      Q => v_bp_cnt(4),
      R => v_bp_cnt0
    );
\v_fp_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010112"
    )
        port map (
      I0 => VSYNC_cs(4),
      I1 => VSYNC_cs(0),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(3),
      I5 => vsync_rst,
      O => v_fp_cnt0
    );
\v_fp_cnt[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      I2 => v_fp_cnt(1),
      I3 => v_fp_cnt(0),
      O => \v_fp_cnt[0]_i_2_n_0\
    );
\v_fp_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      I2 => v_fp_cnt(1),
      O => \v_fp_cnt[1]_i_1_n_0\
    );
\v_fp_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_fp_cnt(2),
      I1 => v_fp_cnt(3),
      O => \v_fp_cnt[2]_i_1_n_0\
    );
\v_fp_cnt[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_fp_cnt(3),
      O => \v_fp_cnt[3]_i_1_n_0\
    );
\v_fp_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[0]_i_2_n_0\,
      Q => v_fp_cnt(0),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[1]_i_1_n_0\,
      Q => v_fp_cnt(1),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[2]_i_1_n_0\,
      Q => v_fp_cnt(2),
      R => v_fp_cnt0
    );
\v_fp_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => \v_fp_cnt[3]_i_1_n_0\,
      Q => v_fp_cnt(3),
      R => v_fp_cnt0
    );
v_fp_cnt_tc_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => v_fp_cnt(0),
      I1 => v_fp_cnt(1),
      I2 => v_fp_cnt(3),
      I3 => v_fp_cnt(2),
      O => v_fp_cnt_tc_i_1_n_0
    );
v_fp_cnt_tc_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_fp_cnt_tc_i_1_n_0,
      Q => v_fp_cnt_tc,
      R => v_fp_cnt0
    );
\v_l_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => VSYNC_cs(0),
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(3),
      I4 => VSYNC_cs(1),
      I5 => vsync_rst,
      O => v_l_cnt0
    );
\v_l_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_l_cnt(0),
      I1 => v_l_cnt(2),
      I2 => \v_l_cnt[0]_i_3_n_0\,
      I3 => v_l_cnt(3),
      I4 => v_l_cnt(1),
      O => v_l_cnt_0(0)
    );
\v_l_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => v_l_cnt(4),
      I1 => v_l_cnt(6),
      I2 => v_l_cnt(5),
      I3 => v_l_cnt(8),
      I4 => v_l_cnt(7),
      O => \v_l_cnt[0]_i_3_n_0\
    );
\v_l_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_l_cnt(1),
      I1 => v_l_cnt(3),
      I2 => \v_l_cnt[0]_i_3_n_0\,
      I3 => v_l_cnt(2),
      O => v_l_cnt_0(1)
    );
\v_l_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => v_l_cnt(2),
      I1 => \v_l_cnt[0]_i_3_n_0\,
      I2 => v_l_cnt(3),
      O => v_l_cnt_0(2)
    );
\v_l_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => v_l_cnt(3),
      I1 => v_l_cnt(7),
      I2 => v_l_cnt(8),
      I3 => v_l_cnt(5),
      I4 => v_l_cnt(6),
      I5 => v_l_cnt(4),
      O => v_l_cnt_0(3)
    );
\v_l_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => v_l_cnt(4),
      I1 => v_l_cnt(6),
      I2 => v_l_cnt(5),
      I3 => v_l_cnt(8),
      I4 => v_l_cnt(7),
      O => v_l_cnt_0(4)
    );
\v_l_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => v_l_cnt(5),
      I1 => v_l_cnt(8),
      I2 => v_l_cnt(7),
      I3 => v_l_cnt(6),
      O => v_l_cnt_0(5)
    );
\v_l_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => v_l_cnt(8),
      I1 => v_l_cnt(7),
      I2 => v_l_cnt(6),
      O => v_l_cnt_0(6)
    );
\v_l_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => v_l_cnt(8),
      I1 => v_l_cnt(7),
      O => v_l_cnt_0(7)
    );
\v_l_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => v_l_cnt(8),
      O => v_l_cnt_0(8)
    );
\v_l_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(0),
      Q => v_l_cnt(0),
      R => v_l_cnt0
    );
\v_l_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(1),
      Q => v_l_cnt(1),
      R => v_l_cnt0
    );
\v_l_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(2),
      Q => v_l_cnt(2),
      R => v_l_cnt0
    );
\v_l_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(3),
      Q => v_l_cnt(3),
      R => v_l_cnt0
    );
\v_l_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(4),
      Q => v_l_cnt(4),
      R => v_l_cnt0
    );
\v_l_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(5),
      Q => v_l_cnt(5),
      R => v_l_cnt0
    );
\v_l_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(6),
      Q => v_l_cnt(6),
      R => v_l_cnt0
    );
\v_l_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(7),
      Q => v_l_cnt(7),
      R => v_l_cnt0
    );
\v_l_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => clk_ce_neg,
      D => v_l_cnt_0(8),
      Q => v_l_cnt(8),
      R => v_l_cnt0
    );
\v_p_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => v_p_cnt(0),
      I1 => clk_ce_neg,
      I2 => v_p_cnt(1),
      I3 => v_p_cnt0,
      O => \v_p_cnt[0]_i_1_n_0\
    );
\v_p_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => VSYNC_cs(0),
      I1 => VSYNC_cs(4),
      I2 => VSYNC_cs(2),
      I3 => VSYNC_cs(1),
      I4 => VSYNC_cs(3),
      I5 => vsync_rst,
      O => v_p_cnt0
    );
\v_p_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => v_p_cnt(1),
      I1 => clk_ce_neg,
      I2 => v_p_cnt0,
      O => \v_p_cnt[1]_i_1_n_0\
    );
\v_p_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \v_p_cnt[0]_i_1_n_0\,
      Q => v_p_cnt(0),
      R => '0'
    );
\v_p_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \v_p_cnt[1]_i_1_n_0\,
      Q => v_p_cnt(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  port (
    ip2intc_irpt_i : out STD_LOGIC;
    vsync_intr : in STD_LOGIC;
    prmry_in : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal tft_intr_en_maxi : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
begin
FDR_IP2INTC_Irpt_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tft_intr_en_maxi,
      I1 => vsync_intr,
      O => ip2intc_irpt_i
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => prmry_in,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => tft_intr_en_maxi,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 is
  port (
    FDR_IP2INTC_Irpt : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \line_cnt_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mreset : in STD_LOGIC;
    trans_cnt_tc : in STD_LOGIC;
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_rd_discontinue : in STD_LOGIC;
    sig_rd2llink_strm_tlast : in STD_LOGIC;
    eof_n : in STD_LOGIC;
    vsync_intr : in STD_LOGIC;
    TFT_on_reg_reg : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 : entity is "cdc_sync";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0 is
  signal \^line_cnt_reg[8]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FDR_IP2INTC_Irpt_i_1 : label is "soft_lutpair76";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\ : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \line_cnt[0]_i_1\ : label is "soft_lutpair76";
begin
  \line_cnt_reg[8]\(0) <= \^line_cnt_reg[8]\(0);
  scndry_out <= \^scndry_out\;
FDR_IP2INTC_Irpt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => bus2ip_mreset,
      I1 => \^scndry_out\,
      O => FDR_IP2INTC_Irpt
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => TFT_on_reg_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_d3,
      Q => \^scndry_out\,
      R => '0'
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => \^scndry_out\,
      I1 => bus2ip_mreset,
      I2 => vsync_intr,
      O => \^line_cnt_reg[8]\(0)
    );
\trans_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEEE"
    )
        port map (
      I0 => \^line_cnt_reg[8]\(0),
      I1 => trans_cnt_tc,
      I2 => sig_llink2cmd_rd_busy,
      I3 => sig_rd_discontinue,
      I4 => sig_rd2llink_strm_tlast,
      I5 => eof_n,
      O => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\ is
  port (
    IP2Bus_MstRd_Req_reg : out STD_LOGIC;
    mn_request_set : out STD_LOGIC;
    IP2Bus_Mst_Type_reg : out STD_LOGIC;
    IP2Bus_MstRd_dst_rdy_reg : out STD_LOGIC;
    tft_rst : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    get_line_start_d1 : in STD_LOGIC;
    ip2bus_mstrd_req : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_mst_cmdack : in STD_LOGIC;
    scndry_out : in STD_LOGIC;
    ip2bus_mst_type : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    sig_llink_busy_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    \trans_cnt_reg[1]\ : in STD_LOGIC;
    bus2ip_mst_cmplt : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\ is
  signal get_line : STD_LOGIC;
  signal \^mn_request_set\ : STD_LOGIC;
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  mn_request_set <= \^mn_request_set\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => get_line,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => p_in_d1_cdc_from,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored,
      Q => p_in_d1_cdc_from,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => get_line_start_d1,
      I1 => p_in_d1_cdc_from,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
IP2Bus_MstRd_Req_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000E0000"
    )
        port map (
      I0 => ip2bus_mstrd_req,
      I1 => \^mn_request_set\,
      I2 => E(0),
      I3 => bus2ip_mst_cmdack,
      I4 => scndry_out,
      I5 => bus2ip_mreset,
      O => IP2Bus_MstRd_Req_reg
    );
IP2Bus_MstRd_dst_rdy_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0000"
    )
        port map (
      I0 => IP2Bus_MstRd_dst_rdy,
      I1 => \^mn_request_set\,
      I2 => sig_llink_busy_reg(0),
      I3 => bus2ip_mreset,
      I4 => scndry_out,
      O => IP2Bus_MstRd_dst_rdy_reg
    );
IP2Bus_Mst_Type_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E00"
    )
        port map (
      I0 => ip2bus_mst_type,
      I1 => \^mn_request_set\,
      I2 => bus2ip_mreset,
      I3 => scndry_out,
      I4 => bus2ip_mst_cmdack,
      O => IP2Bus_Mst_Type_reg
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
\trans_cnt_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => get_line,
      I1 => \trans_cnt_reg[1]\,
      I2 => bus2ip_mst_cmplt,
      O => \^mn_request_set\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\ is
  port (
    p_in_d1_cdc_from : out STD_LOGIC;
    vsync_intr : out STD_LOGIC;
    prmry_in_xored : out STD_LOGIC;
    tft_rst : in STD_LOGIC;
    prmry_in_xored_0 : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    p_in_d1_cdc_from_1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\ is
  signal \^p_in_d1_cdc_from\ : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  signal \^vsync_intr\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  p_in_d1_cdc_from <= \^p_in_d1_cdc_from\;
  vsync_intr <= \^vsync_intr\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => \^vsync_intr\,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \^p_in_d1_cdc_from\,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored_0,
      Q => \^p_in_d1_cdc_from\,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^vsync_intr\,
      I1 => p_in_d1_cdc_from_1,
      O => prmry_in_xored
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\ is
  port (
    p_in_d1_cdc_from : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    tft_rst : in STD_LOGIC;
    prmry_in_xored : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\ is
  signal \^p_in_d1_cdc_from\ : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  p_in_d1_cdc_from <= \^p_in_d1_cdc_from\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => E(0),
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \^p_in_d1_cdc_from\,
      Q => s_out_d1_cdc_to,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => prmry_in_xored,
      Q => \^p_in_d1_cdc_from\,
      R => tft_rst
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_mreset
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized3\ is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \TFT_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized3\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized3\ is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_10 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_2 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_3 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_4 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_5 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_6 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_7 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_8 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_9 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d2_10 : STD_LOGIC;
  signal s_level_out_bus_d2_2 : STD_LOGIC;
  signal s_level_out_bus_d2_3 : STD_LOGIC;
  signal s_level_out_bus_d2_4 : STD_LOGIC;
  signal s_level_out_bus_d2_5 : STD_LOGIC;
  signal s_level_out_bus_d2_6 : STD_LOGIC;
  signal s_level_out_bus_d2_7 : STD_LOGIC;
  signal s_level_out_bus_d2_8 : STD_LOGIC;
  signal s_level_out_bus_d2_9 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  signal s_level_out_bus_d3_10 : STD_LOGIC;
  signal s_level_out_bus_d3_2 : STD_LOGIC;
  signal s_level_out_bus_d3_3 : STD_LOGIC;
  signal s_level_out_bus_d3_4 : STD_LOGIC;
  signal s_level_out_bus_d3_5 : STD_LOGIC;
  signal s_level_out_bus_d3_6 : STD_LOGIC;
  signal s_level_out_bus_d3_7 : STD_LOGIC;
  signal s_level_out_bus_d3_8 : STD_LOGIC;
  signal s_level_out_bus_d3_9 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_10,
      Q => s_level_out_bus_d2_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_2,
      Q => s_level_out_bus_d2_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_3,
      Q => s_level_out_bus_d2_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_4,
      Q => s_level_out_bus_d2_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_5,
      Q => s_level_out_bus_d2_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_6,
      Q => s_level_out_bus_d2_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_7,
      Q => s_level_out_bus_d2_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_8,
      Q => s_level_out_bus_d2_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_9,
      Q => s_level_out_bus_d2_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_10,
      Q => s_level_out_bus_d3_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_2,
      Q => s_level_out_bus_d3_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_3,
      Q => s_level_out_bus_d3_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_4,
      Q => s_level_out_bus_d3_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_5,
      Q => s_level_out_bus_d3_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_6,
      Q => s_level_out_bus_d3_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_7,
      Q => s_level_out_bus_d3_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_8,
      Q => s_level_out_bus_d3_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_9,
      Q => s_level_out_bus_d3_9,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[10].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_10,
      Q => scndry_vect_out(10),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_2,
      Q => scndry_vect_out(2),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_3,
      Q => scndry_vect_out(3),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[4].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_4,
      Q => scndry_vect_out(4),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[5].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_5,
      Q => scndry_vect_out(5),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[6].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_6,
      Q => scndry_vect_out(6),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[7].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_7,
      Q => scndry_vect_out(7),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[8].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_8,
      Q => scndry_vect_out(8),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[9].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_9,
      Q => scndry_vect_out(9),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(10),
      Q => s_level_out_bus_d1_cdc_to_10,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[2].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(2),
      Q => s_level_out_bus_d1_cdc_to_2,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[3].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(3),
      Q => s_level_out_bus_d1_cdc_to_3,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[4].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(4),
      Q => s_level_out_bus_d1_cdc_to_4,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[5].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(5),
      Q => s_level_out_bus_d1_cdc_to_5,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[6].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(6),
      Q => s_level_out_bus_d1_cdc_to_6,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[7].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(7),
      Q => s_level_out_bus_d1_cdc_to_7,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[8].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(8),
      Q => s_level_out_bus_d1_cdc_to_8,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[9].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \TFT_base_addr_reg[0]\(9),
      Q => s_level_out_bus_d1_cdc_to_9,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized4\ is
  port (
    scndry_out : out STD_LOGIC;
    TFT_on_reg_reg : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized4\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized4\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => TFT_on_reg_reg,
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => scndry_out,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized5\ is
  port (
    p_in_d1_cdc_from : out STD_LOGIC;
    tft_status_i : out STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    prmry_in_xored : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized5\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized5\ is
  signal \^p_in_d1_cdc_from\ : STD_LOGIC;
  signal s_out_d1_cdc_to : STD_LOGIC;
  signal s_out_d2 : STD_LOGIC;
  signal s_out_d3 : STD_LOGIC;
  signal s_out_d4 : STD_LOGIC;
  signal s_out_d5 : STD_LOGIC;
  signal \s_out_re__0\ : STD_LOGIC;
  signal srst_d1 : STD_LOGIC;
  signal srst_d2 : STD_LOGIC;
  signal srst_d3 : STD_LOGIC;
  signal srst_d4 : STD_LOGIC;
  signal srst_d5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "FDR";
  attribute box_type of \GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\ : label is "PRIMITIVE";
begin
  p_in_d1_cdc_from <= \^p_in_d1_cdc_from\;
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d1_cdc_to,
      Q => s_out_d2,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d2,
      Q => s_out_d3,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d3,
      Q => s_out_d4,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_s_out_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_out_d4,
      Q => s_out_d5,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.P_IN_CROSS2SCNDRY_scndry_out\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_out_re__0\,
      Q => tft_status_i,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN2_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^p_in_d1_cdc_from\,
      Q => s_out_d1_cdc_to,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.REG_P_IN_cdc_from\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => prmry_in_xored,
      Q => \^p_in_d1_cdc_from\,
      R => bus2ip_mreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d1\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => '1',
      Q => srst_d1,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d1,
      Q => srst_d2,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d2,
      Q => srst_d3,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d3,
      Q => srst_d4,
      R => bus2ip_sreset
    );
\GENERATE_PULSE_P_S_CDC_OPEN_ENDED.s_rst_d5\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => srst_d4,
      Q => srst_d5,
      R => bus2ip_sreset
    );
s_out_re: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => srst_d5,
      I1 => s_out_d5,
      I2 => s_out_d4,
      O => \s_out_re__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized6\ is
  port (
    tft_rst : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized6\ : entity is "cdc_sync";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized6\ is
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ : label is "PRIMITIVE";
begin
  scndry_out <= \^scndry_out\;
FDS_HSYNC_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \out\,
      I1 => \^scndry_out\,
      I2 => \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0\,
      O => tft_rst
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '1',
      Q => s_level_out_d1_cdc_to,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => s_level_out_d1_cdc_to,
      Q => \^scndry_out\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f is
  port (
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_inhibit_rdy_n : in STD_LOGIC;
    FIFO_Full_reg : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f is
  signal \INFERRED_GEN.cnt_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \INFERRED_GEN.cnt_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal addr_i_p1 : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Cnt_p10 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \INFERRED_GEN.cnt_i[1]_i_1\ : label is "soft_lutpair42";
begin
  Q(2 downto 0) <= \^q\(2 downto 0);
Cnt_p10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \^q\(0),
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg,
      I3 => m_axi_bvalid,
      O => addr_i_p1(0)
    );
\INFERRED_GEN.cnt_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \^q\(0),
      I1 => m_axi_bvalid,
      I2 => FIFO_Full_reg,
      I3 => sig_inhibit_rdy_n,
      I4 => \^q\(1),
      O => \INFERRED_GEN.cnt_i[1]_i_1_n_0\
    );
\INFERRED_GEN.cnt_i[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg,
      I3 => m_axi_bvalid,
      I4 => \^q\(0),
      I5 => \^q\(2),
      O => \INFERRED_GEN.cnt_i[2]_i_1_n_0\
    );
\INFERRED_GEN.cnt_i_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => addr_i_p1(0),
      Q => \^q\(0),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i[1]_i_1_n_0\,
      Q => \^q\(1),
      S => \out\
    );
\INFERRED_GEN.cnt_i_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \INFERRED_GEN.cnt_i[2]_i_1_n_0\,
      Q => \^q\(2),
      S => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC;
    Q : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[2]\,
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    Q : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ : entity is "pselect_f";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper is
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "INDEPENDENT";
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(13 downto 5) => Q(8 downto 0),
      ADDRARDADDR(4 downto 0) => B"00000",
      ADDRBWRADDR(13 downto 5) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      ADDRBWRADDR(4 downto 0) => B"00000",
      CLKARDCLK => sys_tft_clk,
      CLKBWRCLK => m_axi_aclk,
      DIADI(15 downto 8) => \AXI_BRAM_data_i_reg[8]\(34 downto 27),
      DIADI(7 downto 0) => \AXI_BRAM_data_i_reg[8]\(25 downto 18),
      DIBDI(15 downto 8) => \AXI_BRAM_data_i_reg[8]\(16 downto 9),
      DIBDI(7 downto 0) => \AXI_BRAM_data_i_reg[8]\(7 downto 0),
      DIPADIP(1) => \AXI_BRAM_data_i_reg[8]\(35),
      DIPADIP(0) => \AXI_BRAM_data_i_reg[8]\(26),
      DIPBDIP(1) => \AXI_BRAM_data_i_reg[8]\(17),
      DIPBDIP(0) => \AXI_BRAM_data_i_reg[8]\(8),
      DOADO(15 downto 8) => D(16 downto 9),
      DOADO(7 downto 0) => D(7 downto 0),
      DOBDO(15 downto 8) => D(34 downto 27),
      DOBDO(7 downto 0) => D(25 downto 18),
      DOPADOP(1) => D(17),
      DOPADOP(0) => D(8),
      DOPBDOP(1) => D(35),
      DOPBDOP(0) => D(26),
      ENARDEN => tmp_ram_rd_en,
      ENBWREN => WEBWE(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => \out\,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      WEA(1 downto 0) => B"00",
      WEBWE(3) => WEBWE(0),
      WEBWE(2) => WEBWE(0),
      WEBWE(1) => WEBWE(0),
      WEBWE(0) => WEBWE(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare is
  port (
    comp1 : out STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(0),
      I1 => RD_PNTR_WR(0),
      I2 => Q(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(2),
      I1 => RD_PNTR_WR(2),
      I2 => Q(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(4),
      I1 => RD_PNTR_WR(4),
      I2 => Q(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => Q(6),
      I1 => RD_PNTR_WR(6),
      I2 => Q(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gnxpm_cdc.rd_pntr_bin_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_24 is
  port (
    ram_full_i_reg : out STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    AXI_BRAM_we_i : in STD_LOGIC;
    comp1 : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    \gic0.gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_24 : entity is "compare";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_24;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_24 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(0),
      I1 => RD_PNTR_WR(0),
      I2 => \gic0.gc1.count_d1_reg[7]\(1),
      I3 => RD_PNTR_WR(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(2),
      I1 => RD_PNTR_WR(2),
      I2 => \gic0.gc1.count_d1_reg[7]\(3),
      I3 => RD_PNTR_WR(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(4),
      I1 => RD_PNTR_WR(4),
      I2 => \gic0.gc1.count_d1_reg[7]\(5),
      I3 => RD_PNTR_WR(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \gic0.gc1.count_d1_reg[7]\(6),
      I1 => RD_PNTR_WR(6),
      I2 => \gic0.gc1.count_d1_reg[7]\(7),
      I3 => RD_PNTR_WR(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gnxpm_cdc.rd_pntr_bin_reg[8]\
    );
ram_full_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FF20"
    )
        port map (
      I0 => comp2,
      I1 => \out\,
      I2 => AXI_BRAM_we_i,
      I3 => comp1,
      I4 => \grstd1.grst_full.grst_f.rst_d3_reg\,
      O => ram_full_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_25 is
  port (
    comp0 : out STD_LOGIC;
    \gc1.count_d2_reg[8]\ : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_25 : entity is "compare";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_25;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_25 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(0),
      I1 => Q(0),
      I2 => WR_PNTR_RD(1),
      I3 => Q(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(2),
      I1 => Q(2),
      I2 => WR_PNTR_RD(3),
      I3 => Q(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(4),
      I1 => Q(4),
      I2 => WR_PNTR_RD(5),
      I3 => Q(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(6),
      I1 => Q(6),
      I2 => WR_PNTR_RD(7),
      I3 => Q(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gc1.count_d2_reg[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_26 is
  port (
    ram_empty_i0 : out STD_LOGIC;
    \gc1.count_d1_reg[8]\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    comp0 : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_26 : entity is "compare";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_26;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_26 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal v1_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(0),
      I1 => \gc1.count_d1_reg[7]\(0),
      I2 => WR_PNTR_RD(1),
      I3 => \gc1.count_d1_reg[7]\(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(2),
      I1 => \gc1.count_d1_reg[7]\(2),
      I2 => WR_PNTR_RD(3),
      I3 => \gc1.count_d1_reg[7]\(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(4),
      I1 => \gc1.count_d1_reg[7]\(4),
      I2 => WR_PNTR_RD(5),
      I3 => \gc1.count_d1_reg[7]\(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => WR_PNTR_RD(6),
      I1 => \gc1.count_d1_reg[7]\(6),
      I2 => WR_PNTR_RD(7),
      I3 => \gc1.count_d1_reg[7]\(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => \gc1.count_d1_reg[8]\
    );
ram_empty_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0000DF00"
    )
        port map (
      I0 => \gpregsm1.curr_fwft_state_reg[1]\(0),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => \gpregsm1.curr_fwft_state_reg[1]\(1),
      I3 => comp1,
      I4 => \out\,
      I5 => comp0,
      O => ram_empty_i0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr is
  port (
    ram_empty_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    ram_empty_fb_i_reg_0 : out STD_LOGIC;
    \gc1.count_d2_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_tft_clk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gc1.count_d2_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rd_pntr_plus2 : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc1.count[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gc1.count[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \gc1.count[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gc1.count[4]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \gc1.count[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \gc1.count[8]_i_1\ : label is "soft_lutpair57";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \gc1.count_d2_reg[7]_0\(7 downto 0) <= \^gc1.count_d2_reg[7]_0\(7 downto 0);
\gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      O => \plusOp__0\(0)
    );
\gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus2(0),
      I1 => rd_pntr_plus2(1),
      O => \plusOp__0\(1)
    );
\gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus2(1),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(2),
      O => \plusOp__0\(2)
    );
\gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus2(2),
      I1 => rd_pntr_plus2(0),
      I2 => rd_pntr_plus2(1),
      I3 => rd_pntr_plus2(3),
      O => \plusOp__0\(3)
    );
\gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus2(3),
      I1 => rd_pntr_plus2(1),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(2),
      I4 => rd_pntr_plus2(4),
      O => \plusOp__0\(4)
    );
\gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => rd_pntr_plus2(2),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(1),
      I4 => rd_pntr_plus2(3),
      I5 => rd_pntr_plus2(5),
      O => \plusOp__0\(5)
    );
\gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gc1.count[8]_i_2_n_0\,
      I1 => rd_pntr_plus2(6),
      O => \plusOp__0\(6)
    );
\gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => rd_pntr_plus2(6),
      I1 => \gc1.count[8]_i_2_n_0\,
      I2 => rd_pntr_plus2(7),
      O => \plusOp__0\(7)
    );
\gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => rd_pntr_plus2(7),
      I1 => \gc1.count[8]_i_2_n_0\,
      I2 => rd_pntr_plus2(6),
      I3 => rd_pntr_plus2(8),
      O => \plusOp__0\(8)
    );
\gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => rd_pntr_plus2(4),
      I1 => rd_pntr_plus2(2),
      I2 => rd_pntr_plus2(0),
      I3 => rd_pntr_plus2(1),
      I4 => rd_pntr_plus2(3),
      I5 => rd_pntr_plus2(5),
      O => \gc1.count[8]_i_2_n_0\
    );
\gc1.count_d1_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(0),
      Q => \^gc1.count_d2_reg[7]_0\(0),
      S => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(1),
      Q => \^gc1.count_d2_reg[7]_0\(1),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(2),
      Q => \^gc1.count_d2_reg[7]_0\(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(3),
      Q => \^gc1.count_d2_reg[7]_0\(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(4),
      Q => \^gc1.count_d2_reg[7]_0\(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(5),
      Q => \^gc1.count_d2_reg[7]_0\(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(6),
      Q => \^gc1.count_d2_reg[7]_0\(6),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(7),
      Q => \^gc1.count_d2_reg[7]_0\(7),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus2(8),
      Q => rd_pntr_plus1(8),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(0),
      Q => \^q\(0),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(1),
      Q => \^q\(1),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(2),
      Q => \^q\(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(3),
      Q => \^q\(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(4),
      Q => \^q\(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(5),
      Q => \^q\(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(6),
      Q => \^q\(6),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \^gc1.count_d2_reg[7]_0\(7),
      Q => \^q\(7),
      R => \Q_reg_reg[0]\
    );
\gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => rd_pntr_plus1(8),
      Q => \^q\(8),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => rd_pntr_plus2(0),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => rd_pntr_plus2(1),
      S => \Q_reg_reg[0]\
    );
\gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => rd_pntr_plus2(2),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => rd_pntr_plus2(3),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(4),
      Q => rd_pntr_plus2(4),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(5),
      Q => rd_pntr_plus2(5),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(6),
      Q => rd_pntr_plus2(6),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(7),
      Q => rd_pntr_plus2(7),
      R => \Q_reg_reg[0]\
    );
\gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => \plusOp__0\(8),
      Q => rd_pntr_plus2(8),
      R => \Q_reg_reg[0]\
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(8),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => rd_pntr_plus1(8),
      I1 => WR_PNTR_RD(0),
      O => ram_empty_fb_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    fwft_rst_done_q : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_bm.dout_i_reg[35]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : out STD_LOGIC;
    \gc1.count_d1_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_tft_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ram_empty_fb_i_reg : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aempty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of aempty_fwft_fb_i : signal is std.standard.true;
  signal aempty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of aempty_fwft_i : signal is std.standard.true;
  signal aempty_fwft_i0 : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute DONT_TOUCH of curr_fwft_state : signal is std.standard.true;
  signal empty_fwft_fb_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_fb_o_i : signal is std.standard.true;
  signal empty_fwft_fb_o_i_reg0 : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  attribute DONT_TOUCH of empty_fwft_i : signal is std.standard.true;
  signal empty_fwft_i0 : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal user_valid : STD_LOGIC;
  attribute DONT_TOUCH of user_valid : signal is std.standard.true;
  attribute DONT_TOUCH of aempty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of aempty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of aempty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of aempty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of aempty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of aempty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_fb_o_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_fb_o_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_fb_o_i_reg : label is "no";
  attribute DONT_TOUCH of empty_fwft_i_reg : label is std.standard.true;
  attribute KEEP of empty_fwft_i_reg : label is "yes";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[0]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.curr_fwft_state_reg[1]\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.curr_fwft_state_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \gpregsm1.user_valid_reg\ : label is std.standard.true;
  attribute KEEP of \gpregsm1.user_valid_reg\ : label is "yes";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
  E(0) <= \^e\(0);
  \out\(1 downto 0) <= curr_fwft_state(1 downto 0);
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5155"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => curr_fwft_state(0),
      I2 => \BRAM_TFT_addr_reg[9]\(0),
      I3 => curr_fwft_state(1),
      I4 => \Q_reg_reg[0]\,
      O => tmp_ram_rd_en
    );
aempty_fwft_fb_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEF8000"
    )
        port map (
      I0 => ram_empty_fb_i_reg,
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(0),
      I3 => curr_fwft_state(1),
      I4 => aempty_fwft_fb_i,
      O => aempty_fwft_i0
    );
aempty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => aempty_fwft_fb_i
    );
aempty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => aempty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => aempty_fwft_i
    );
empty_fwft_fb_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => \BRAM_TFT_addr_reg[9]\(0),
      O => empty_fwft_i0
    );
empty_fwft_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => empty_fwft_fb_i
    );
empty_fwft_fb_o_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B2A2"
    )
        port map (
      I0 => empty_fwft_fb_o_i,
      I1 => curr_fwft_state(1),
      I2 => curr_fwft_state(0),
      I3 => \BRAM_TFT_addr_reg[9]\(0),
      O => empty_fwft_fb_o_i_reg0
    );
empty_fwft_fb_o_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => empty_fwft_fb_o_i_reg0,
      Q => empty_fwft_fb_o_i,
      S => \Q_reg_reg[0]\
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => empty_fwft_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => empty_fwft_i
    );
\gc1.count_d1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg,
      O => \gc1.count_d1_reg[8]\(0)
    );
\gfwft_rst_done.fwft_rst_done_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \^e\(0),
      Q => fwft_rst_done_q,
      R => '0'
    );
\gfwft_rst_done.fwft_rst_done_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      D => \Q_reg_reg[0]_0\,
      Q => \^e\(0)
    );
\goreg_bm.dout_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => curr_fwft_state(0),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(1),
      O => \goreg_bm.dout_i_reg[35]\(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => curr_fwft_state(0),
      I2 => \BRAM_TFT_addr_reg[9]\(0),
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => curr_fwft_state(1),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => curr_fwft_state(0),
      I3 => ram_empty_fb_i_reg,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \^e\(0),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0),
      R => SR(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \^e\(0),
      D => next_fwft_state(1),
      Q => curr_fwft_state(1),
      R => SR(0)
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => \^e\(0),
      D => next_fwft_state(0),
      Q => user_valid,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_1 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\ : out STD_LOGIC;
    wr_rst_busy_i2_out : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sckt_wr_rst_i_q : in STD_LOGIC;
    sckt_wrst_i : in STD_LOGIC;
    \Q_reg_reg[0]_1\ : in STD_LOGIC;
    \Q_reg_reg[0]_2\ : in STD_LOGIC;
    \Q_reg_reg[0]_3\ : in STD_LOGIC;
    \Q_reg_reg[0]_4\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_1 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_1 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \^wr_rst_busy_i2_out\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
  wr_rst_busy_i2_out <= \^wr_rst_busy_i2_out\;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sckt_wr_rst_i_q,
      I1 => sckt_wrst_i,
      I2 => \^wr_rst_busy_i2_out\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q_reg,
      I1 => \Q_reg_reg[0]_1\,
      I2 => \Q_reg_reg[0]_2\,
      I3 => \Q_reg_reg[0]_3\,
      I4 => sckt_wrst_i,
      I5 => \Q_reg_reg[0]_4\,
      O => \^wr_rst_busy_i2_out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_10 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\ : out STD_LOGIC;
    \gfwft_rst_done.fwft_rst_done_reg\ : out STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    rd_rst_active : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\ : in STD_LOGIC;
    \Q_reg_reg[0]_1\ : in STD_LOGIC;
    \Q_reg_reg[0]_2\ : in STD_LOGIC;
    sckt_rd_rst_fwft : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    fwft_rst_done_q : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_10 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_10;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_10 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\gfwft_rst_done.fwft_rst_done_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => Q_reg,
      I1 => sckt_rd_rst_fwft,
      I2 => E(0),
      O => \gfwft_rst_done.fwft_rst_done_reg\
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q_reg,
      I1 => fwft_rst_done_q,
      O => \gpregsm1.curr_fwft_state_reg[1]\(0)
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"222F2222"
    )
        port map (
      I0 => rd_rst_active,
      I1 => Q_reg,
      I2 => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\,
      I3 => \Q_reg_reg[0]_1\,
      I4 => \Q_reg_reg[0]_2\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D0DFD0D0"
    )
        port map (
      I0 => sckt_rd_rst_fwft,
      I1 => Q_reg,
      I2 => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\,
      I3 => \Q_reg_reg[0]_1\,
      I4 => \Q_reg_reg[0]_2\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_11 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_11 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_11;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_11 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_12 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_12 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_12 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_13 is
  port (
    \out\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_13 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_13 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_14 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_14 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_14;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_14 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_15 is
  port (
    \grstd1.grst_full.grst_f.rst_d1_reg\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_15 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_15;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_15 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \grstd1.grst_full.grst_f.rst_d1_reg\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_16 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_16 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_16;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_16 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_17 is
  port (
    \out\ : out STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_17 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_17;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_17 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => in0(0),
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_18 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_18 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_18;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_18 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_19 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_19 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_19;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_19 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_2 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_2 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_2 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_20 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_20 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_20;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_20 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_21 is
  port (
    \out\ : out STD_LOGIC;
    \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_21 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_21;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_21 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_22 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    rd_rst_active : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_22 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_22;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_22 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => rd_rst_active,
      I1 => Q_reg,
      I2 => in0(0),
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_23 is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    in0 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_23 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_23;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_23 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in0(0),
      I1 => Q_reg,
      O => AS(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_3 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_3 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_3 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_4 is
  port (
    \out\ : out STD_LOGIC;
    sckt_wrst_i : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_4 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_4 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => sckt_wrst_i,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_5 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_5 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_5 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_6 is
  port (
    \out\ : out STD_LOGIC;
    sckt_wrst_i : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_6 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_6;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_6 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sckt_wrst_i,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_7 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_7 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_7;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_7 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_8 is
  port (
    \out\ : out STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_8 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_8;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_8 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \out\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \Q_reg_reg[0]_0\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_9 is
  port (
    \Q_reg_reg[0]_0\ : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_9 : entity is "synchronizer_ff";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_9;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_9 is
  signal Q_reg : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
begin
  \Q_reg_reg[0]_0\ <= Q_reg;
\Q_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => Q_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized0\ : entity is "synchronizer_ff";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized0\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  D(8 downto 0) <= Q_reg(8 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => Q(8),
      Q => Q_reg(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized1\ is
  port (
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized1\ : entity is "synchronizer_ff";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized1\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  D(8 downto 0) <= Q_reg(8 downto 0);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(8),
      Q => Q_reg(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized2\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.wr_pntr_bin_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    \Q_reg_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized2\ : entity is "synchronizer_ff";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized2\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0\ : STD_LOGIC;
  signal \^gnxpm_cdc.wr_pntr_bin_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  \gnxpm_cdc.wr_pntr_bin_reg[7]\(7 downto 0) <= \^gnxpm_cdc.wr_pntr_bin_reg[7]\(7 downto 0);
  \out\(0) <= Q_reg(8);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \Q_reg_reg[0]_0\,
      D => D(8),
      Q => Q_reg(8)
    );
\gnxpm_cdc.wr_pntr_bin[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(2),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(0)
    );
\gnxpm_cdc.wr_pntr_bin[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(2),
      I1 => Q_reg(1),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(1)
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(2),
      I2 => Q_reg(3),
      I3 => \gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0\,
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(2)
    );
\gnxpm_cdc.wr_pntr_bin[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(5),
      O => \gnxpm_cdc.wr_pntr_bin[2]_i_2_n_0\
    );
\gnxpm_cdc.wr_pntr_bin[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(3),
      I2 => Q_reg(4),
      I3 => Q_reg(8),
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(3)
    );
\gnxpm_cdc.wr_pntr_bin[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(4),
      I2 => Q_reg(5),
      I3 => Q_reg(8),
      I4 => Q_reg(7),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(4)
    );
\gnxpm_cdc.wr_pntr_bin[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(5),
      I2 => Q_reg(8),
      I3 => Q_reg(7),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(5)
    );
\gnxpm_cdc.wr_pntr_bin[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(6),
      I2 => Q_reg(8),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(6)
    );
\gnxpm_cdc.wr_pntr_bin[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(8),
      O => \^gnxpm_cdc.wr_pntr_bin_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized3\ is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized3\ : entity is "synchronizer_ff";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized3\ is
  signal Q_reg : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute async_reg : string;
  attribute async_reg of Q_reg : signal is "true";
  attribute msgon : string;
  attribute msgon of Q_reg : signal is "true";
  signal \gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0\ : STD_LOGIC;
  signal \^gnxpm_cdc.rd_pntr_bin_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \Q_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \Q_reg_reg[0]\ : label is "yes";
  attribute msgon of \Q_reg_reg[0]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[1]\ : label is "yes";
  attribute msgon of \Q_reg_reg[1]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[2]\ : label is "yes";
  attribute msgon of \Q_reg_reg[2]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[3]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[3]\ : label is "yes";
  attribute msgon of \Q_reg_reg[3]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[4]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[4]\ : label is "yes";
  attribute msgon of \Q_reg_reg[4]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[5]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[5]\ : label is "yes";
  attribute msgon of \Q_reg_reg[5]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[6]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[6]\ : label is "yes";
  attribute msgon of \Q_reg_reg[6]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[7]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[7]\ : label is "yes";
  attribute msgon of \Q_reg_reg[7]\ : label is "true";
  attribute ASYNC_REG_boolean of \Q_reg_reg[8]\ : label is std.standard.true;
  attribute KEEP of \Q_reg_reg[8]\ : label is "yes";
  attribute msgon of \Q_reg_reg[8]\ : label is "true";
begin
  \gnxpm_cdc.rd_pntr_bin_reg[7]\(7 downto 0) <= \^gnxpm_cdc.rd_pntr_bin_reg[7]\(7 downto 0);
  \out\(0) <= Q_reg(8);
\Q_reg_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(0),
      Q => Q_reg(0)
    );
\Q_reg_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(1),
      Q => Q_reg(1)
    );
\Q_reg_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(2),
      Q => Q_reg(2)
    );
\Q_reg_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(3),
      Q => Q_reg(3)
    );
\Q_reg_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(4),
      Q => Q_reg(4)
    );
\Q_reg_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(5),
      Q => Q_reg(5)
    );
\Q_reg_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(6),
      Q => Q_reg(6)
    );
\Q_reg_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(7),
      Q => Q_reg(7)
    );
\Q_reg_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => D(8),
      Q => Q_reg(8)
    );
\gnxpm_cdc.rd_pntr_bin[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(1),
      I1 => Q_reg(0),
      I2 => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(2),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(0)
    );
\gnxpm_cdc.rd_pntr_bin[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(2),
      I1 => Q_reg(1),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(1)
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(8),
      I1 => Q_reg(2),
      I2 => Q_reg(3),
      I3 => \gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0\,
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(2)
    );
\gnxpm_cdc.rd_pntr_bin[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(4),
      I1 => Q_reg(5),
      O => \gnxpm_cdc.rd_pntr_bin[2]_i_2_n_0\
    );
\gnxpm_cdc.rd_pntr_bin[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q_reg(5),
      I1 => Q_reg(3),
      I2 => Q_reg(4),
      I3 => Q_reg(8),
      I4 => Q_reg(6),
      I5 => Q_reg(7),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(3)
    );
\gnxpm_cdc.rd_pntr_bin[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(4),
      I2 => Q_reg(5),
      I3 => Q_reg(8),
      I4 => Q_reg(7),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(4)
    );
\gnxpm_cdc.rd_pntr_bin[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => Q_reg(6),
      I1 => Q_reg(5),
      I2 => Q_reg(8),
      I3 => Q_reg(7),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(5)
    );
\gnxpm_cdc.rd_pntr_bin[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(6),
      I2 => Q_reg(8),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(6)
    );
\gnxpm_cdc.rd_pntr_bin[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q_reg(7),
      I1 => Q_reg(8),
      O => \^gnxpm_cdc.rd_pntr_bin_reg[7]\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]_0\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gic0.gc1.count[8]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc1.count_d3_reg[8]_0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus3 : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc1.count[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gic0.gc1.count[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \gic0.gc1.count[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gic0.gc1.count[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \gic0.gc1.count[7]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \gic0.gc1.count[8]_i_1\ : label is "soft_lutpair60";
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
  \gic0.gc1.count_d3_reg[8]_0\(8 downto 0) <= \^gic0.gc1.count_d3_reg[8]_0\(8 downto 0);
\gic0.gc1.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      O => plusOp(0)
    );
\gic0.gc1.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      O => plusOp(1)
    );
\gic0.gc1.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => wr_pntr_plus3(0),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(2),
      O => plusOp(2)
    );
\gic0.gc1.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus3(1),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(2),
      I3 => wr_pntr_plus3(3),
      O => plusOp(3)
    );
\gic0.gc1.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => wr_pntr_plus3(2),
      I1 => wr_pntr_plus3(0),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(3),
      I4 => wr_pntr_plus3(4),
      O => plusOp(4)
    );
\gic0.gc1.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => wr_pntr_plus3(3),
      I1 => wr_pntr_plus3(1),
      I2 => wr_pntr_plus3(0),
      I3 => wr_pntr_plus3(2),
      I4 => wr_pntr_plus3(4),
      I5 => wr_pntr_plus3(5),
      O => plusOp(5)
    );
\gic0.gc1.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count[8]_i_2_n_0\,
      I1 => wr_pntr_plus3(6),
      O => plusOp(6)
    );
\gic0.gc1.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gic0.gc1.count[8]_i_2_n_0\,
      I1 => wr_pntr_plus3(6),
      I2 => wr_pntr_plus3(7),
      O => plusOp(7)
    );
\gic0.gc1.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => wr_pntr_plus3(6),
      I1 => \gic0.gc1.count[8]_i_2_n_0\,
      I2 => wr_pntr_plus3(7),
      I3 => wr_pntr_plus3(8),
      O => plusOp(8)
    );
\gic0.gc1.count[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => wr_pntr_plus3(5),
      I1 => wr_pntr_plus3(3),
      I2 => wr_pntr_plus3(1),
      I3 => wr_pntr_plus3(0),
      I4 => wr_pntr_plus3(2),
      I5 => wr_pntr_plus3(4),
      O => \gic0.gc1.count[8]_i_2_n_0\
    );
\gic0.gc1.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(0),
      Q => \^q\(0),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(1),
      Q => \^q\(1),
      S => SR(0)
    );
\gic0.gc1.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(2),
      Q => \^q\(2),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(4),
      Q => \^q\(4),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(5),
      Q => \^q\(5),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(6),
      Q => \^q\(6),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(7),
      Q => \^q\(7),
      R => SR(0)
    );
\gic0.gc1.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => wr_pntr_plus3(8),
      Q => \^q\(8),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(0),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(0),
      S => SR(0)
    );
\gic0.gc1.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(1),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(1),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(2),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(2),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(3),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(3),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(4),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(4),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(5),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(5),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(6),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(6),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(7),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(7),
      R => SR(0)
    );
\gic0.gc1.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^q\(8),
      Q => \^gic0.gc1.count_d3_reg[8]_0\(8),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(0),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(1),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(2),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(3),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(4),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(4),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(5),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(5),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(6),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(6),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(7),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(7),
      R => SR(0)
    );
\gic0.gc1.count_d3_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \^gic0.gc1.count_d3_reg[8]_0\(8),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8),
      R => SR(0)
    );
\gic0.gc1.count_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(0),
      Q => wr_pntr_plus3(0),
      S => SR(0)
    );
\gic0.gc1.count_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(1),
      Q => wr_pntr_plus3(1),
      S => SR(0)
    );
\gic0.gc1.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(2),
      Q => wr_pntr_plus3(2),
      R => SR(0)
    );
\gic0.gc1.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(3),
      Q => wr_pntr_plus3(3),
      R => SR(0)
    );
\gic0.gc1.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(4),
      Q => wr_pntr_plus3(4),
      R => SR(0)
    );
\gic0.gc1.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(5),
      Q => wr_pntr_plus3(5),
      R => SR(0)
    );
\gic0.gc1.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(6),
      Q => wr_pntr_plus3(6),
      R => SR(0)
    );
\gic0.gc1.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(7),
      Q => wr_pntr_plus3(7),
      R => SR(0)
    );
\gic0.gc1.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => E(0),
      D => plusOp(8),
      Q => wr_pntr_plus3(8),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  port (
    bus2ip_wrce_d1_reg : out STD_LOGIC;
    bus2ip_wrce_d1_reg_0 : out STD_LOGIC;
    TFT_iic_xfer_reg : out STD_LOGIC;
    TFT_iic_xfer_reg_0 : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_on_reg_reg : out STD_LOGIC;
    \IP2Bus_Data_reg[29]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[27]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[26]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[25]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[24]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[23]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[22]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[21]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[20]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[19]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[18]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[17]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[16]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[2]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[3]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[4]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[5]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[6]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[7]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[8]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[9]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[10]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    bus2ip_wrce_or : out STD_LOGIC;
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \IP2Bus_Data_reg[16]_0\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]_0\ : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_rnw_i_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prmry_in : in STD_LOGIC;
    tft_dps : in STD_LOGIC;
    TFT_on_reg_reg_0 : in STD_LOGIC;
    \TFT_iic_reg_data_reg[0]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \TFT_iic_reg_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \TFT_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    TFT_iic_xfer : in STD_LOGIC;
    TFT_on_reg_reg_1 : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[2]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \IP2Bus_Data[0]_i_2_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[0]_i_3_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[0]_i_4_n_0\ : STD_LOGIC;
  signal \IP2Bus_Data[31]_i_3_n_0\ : STD_LOGIC;
  signal \SLAVE_REG_U6/IP2Bus_Data[0]_i_5_n_0\ : STD_LOGIC;
  signal \SLAVE_REG_U6/IP2Bus_Data[28]_i_3_n_0\ : STD_LOGIC;
  signal \TFT_CTRL_I/IP2Bus_Data\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \^tft_iic_xfer_reg\ : STD_LOGIC;
  signal \^bus2ip_wrce_d1_reg\ : STD_LOGIC;
  signal \^bus2ip_wrce_d1_reg_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \IP2Bus_Data[0]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \IP2Bus_Data[10]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[16]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \IP2Bus_Data[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \IP2Bus_Data[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \IP2Bus_Data[19]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \IP2Bus_Data[1]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IP2Bus_Data[26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \IP2Bus_Data[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \IP2Bus_Data[31]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \IP2Bus_Data[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \IP2Bus_Data[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \IP2Bus_Data[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \IP2Bus_Data[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \IP2Bus_Data[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \IP2Bus_Data[8]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \IP2Bus_Data[9]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \SLAVE_REG_U6/IP2Bus_Data[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SLAVE_REG_U6/IP2Bus_Data[28]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \SLAVE_REG_U6/bus2ip_rdce_or\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \SLAVE_REG_U6/bus2ip_wrce_or\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \TFT_base_addr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of TFT_dps_reg_i_1 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \TFT_iic_reg_data[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of TFT_iic_xfer_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of TFT_on_reg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of TFT_status_reg_i_2 : label is "soft_lutpair5";
begin
  TFT_iic_xfer_reg <= \^tft_iic_xfer_reg\;
  bus2ip_wrce_d1_reg <= \^bus2ip_wrce_d1_reg\;
  bus2ip_wrce_d1_reg_0 <= \^bus2ip_wrce_d1_reg_0\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => \^tft_iic_xfer_reg\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^tft_iic_xfer_reg\,
      R => '0'
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Q,
      I1 => \bus2ip_addr_i_reg[2]\,
      I2 => \bus2ip_addr_i_reg[3]\,
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \^bus2ip_wrce_d1_reg_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \^bus2ip_wrce_d1_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\,
      I1 => Q,
      I2 => \bus2ip_addr_i_reg[2]\,
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\IP2Bus_Data[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg\,
      I1 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data[0]_i_2_n_0\
    );
\IP2Bus_Data[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data[0]_i_3_n_0\
    );
\IP2Bus_Data[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data[0]_i_4_n_0\
    );
\IP2Bus_Data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(0),
      O => \IP2Bus_Data_reg[10]\
    );
\IP2Bus_Data[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(7),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[16]\
    );
\IP2Bus_Data[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(6),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[17]\
    );
\IP2Bus_Data[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(5),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[18]\
    );
\IP2Bus_Data[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[19]\
    );
\IP2Bus_Data[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(9),
      O => \IP2Bus_Data_reg[1]\
    );
\IP2Bus_Data[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[20]\
    );
\IP2Bus_Data[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[21]\
    );
\IP2Bus_Data[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[22]\
    );
\IP2Bus_Data[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_addr_reg[0]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[23]\
    );
\IP2Bus_Data[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_data_reg[0]\(6),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[24]\
    );
\IP2Bus_Data[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_data_reg[0]\(5),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[25]\
    );
\IP2Bus_Data[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_data_reg[0]\(4),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[26]\
    );
\IP2Bus_Data[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_data_reg[0]\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[27]\
    );
\IP2Bus_Data[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010F0F0"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \TFT_iic_reg_data_reg[0]\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[29]\
    );
\IP2Bus_Data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(8),
      O => \IP2Bus_Data_reg[2]\
    );
\IP2Bus_Data[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data[31]_i_3_n_0\
    );
\IP2Bus_Data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(7),
      O => \IP2Bus_Data_reg[3]\
    );
\IP2Bus_Data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(6),
      O => \IP2Bus_Data_reg[4]\
    );
\IP2Bus_Data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(5),
      O => \IP2Bus_Data_reg[5]\
    );
\IP2Bus_Data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(4),
      O => \IP2Bus_Data_reg[6]\
    );
\IP2Bus_Data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(3),
      O => \IP2Bus_Data_reg[7]\
    );
\IP2Bus_Data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(2),
      O => \IP2Bus_Data_reg[8]\
    );
\IP2Bus_Data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \TFT_base_addr_reg[0]\(1),
      O => \IP2Bus_Data_reg[9]\
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pselect_f__parameterized1\
     port map (
      Q => Q,
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg[3]\,
      ce_expnd_i_1 => ce_expnd_i_1
    );
\SLAVE_REG_U6/IP2Bus_Data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF040004"
    )
        port map (
      I0 => \IP2Bus_Data[0]_i_2_n_0\,
      I1 => TFT_iic_xfer,
      I2 => \IP2Bus_Data[0]_i_3_n_0\,
      I3 => \IP2Bus_Data[0]_i_4_n_0\,
      I4 => \TFT_base_addr_reg[0]\(10),
      I5 => \SLAVE_REG_U6/IP2Bus_Data[0]_i_5_n_0\,
      O => \IP2Bus_Data_reg[0]\
    );
\SLAVE_REG_U6/IP2Bus_Data[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFBFFFFFFFF"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \^bus2ip_wrce_d1_reg\,
      I3 => bus2ip_sreset,
      I4 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I5 => \^tft_iic_xfer_reg\,
      O => \SLAVE_REG_U6/IP2Bus_Data[0]_i_5_n_0\
    );
\SLAVE_REG_U6/IP2Bus_Data[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \^bus2ip_wrce_d1_reg\,
      I3 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I4 => \^tft_iic_xfer_reg\,
      I5 => bus2ip_sreset,
      O => \IP2Bus_Data_reg[16]_0\
    );
\SLAVE_REG_U6/IP2Bus_Data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => bus2ip_sreset,
      I1 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I2 => \^tft_iic_xfer_reg\,
      O => \IP2Bus_Data_reg[1]_0\
    );
\SLAVE_REG_U6/IP2Bus_Data[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000088800000"
    )
        port map (
      I0 => \TFT_CTRL_I/IP2Bus_Data\(3),
      I1 => \SLAVE_REG_U6/IP2Bus_Data[28]_i_3_n_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I3 => \^bus2ip_wrce_d1_reg\,
      I4 => \^tft_iic_xfer_reg\,
      I5 => \^bus2ip_wrce_d1_reg_0\,
      O => \IP2Bus_Data_reg[28]\
    );
\SLAVE_REG_U6/IP2Bus_Data[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCCC00E4CCCC"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg\,
      I1 => \TFT_iic_reg_data_reg[0]\(2),
      I2 => prmry_in,
      I3 => \^bus2ip_wrce_d1_reg_0\,
      I4 => \^tft_iic_xfer_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \TFT_CTRL_I/IP2Bus_Data\(3)
    );
\SLAVE_REG_U6/IP2Bus_Data[28]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => bus2ip_sreset,
      I1 => \^tft_iic_xfer_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \SLAVE_REG_U6/IP2Bus_Data[28]_i_3_n_0\
    );
\SLAVE_REG_U6/IP2Bus_Data[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000880080008000"
    )
        port map (
      I0 => \TFT_CTRL_I/IP2Bus_Data\(1),
      I1 => \^tft_iic_xfer_reg\,
      I2 => \^bus2ip_wrce_d1_reg_0\,
      I3 => \SLAVE_REG_U6/IP2Bus_Data[28]_i_3_n_0\,
      I4 => \^bus2ip_wrce_d1_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => \IP2Bus_Data_reg[30]\
    );
\SLAVE_REG_U6/IP2Bus_Data[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CCCCF404CCCC"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg\,
      I1 => \TFT_iic_reg_data_reg[0]\(0),
      I2 => \^bus2ip_wrce_d1_reg_0\,
      I3 => tft_dps,
      I4 => \^tft_iic_xfer_reg\,
      I5 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      O => \TFT_CTRL_I/IP2Bus_Data\(1)
    );
\SLAVE_REG_U6/IP2Bus_Data[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAA8"
    )
        port map (
      I0 => TFT_on_reg_reg_1,
      I1 => \IP2Bus_Data[0]_i_2_n_0\,
      I2 => \IP2Bus_Data[0]_i_3_n_0\,
      I3 => \IP2Bus_Data[31]_i_3_n_0\,
      I4 => bus2ip_sreset,
      I5 => \IP2Bus_Data[0]_i_4_n_0\,
      O => \IP2Bus_Data_reg[31]\
    );
\SLAVE_REG_U6/bus2ip_rdce_or\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \^tft_iic_xfer_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => bus2ip_rdce_or
    );
\SLAVE_REG_U6/bus2ip_wrce_or\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg_0\,
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I3 => \^tft_iic_xfer_reg\,
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      O => bus2ip_wrce_or
    );
\TFT_base_addr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \^tft_iic_xfer_reg\,
      O => bus2ip_wrce(2)
    );
TFT_dps_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^bus2ip_wrce_d1_reg_0\,
      I2 => \^tft_iic_xfer_reg\,
      I3 => tft_dps,
      O => TFT_dps_reg_reg
    );
\TFT_iic_reg_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => \^tft_iic_xfer_reg\,
      O => bus2ip_wrce(0)
    );
TFT_iic_xfer_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^tft_iic_xfer_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => s_axi_wdata(3),
      O => TFT_iic_xfer_reg_0
    );
TFT_intr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \^bus2ip_wrce_d1_reg\,
      I2 => \^tft_iic_xfer_reg\,
      I3 => prmry_in,
      O => TFT_intr_en_reg
    );
TFT_on_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => \^bus2ip_wrce_d1_reg_0\,
      I2 => \^tft_iic_xfer_reg\,
      I3 => TFT_on_reg_reg_0,
      O => TFT_on_reg_reg
    );
TFT_status_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^bus2ip_wrce_d1_reg\,
      I1 => \^tft_iic_xfer_reg\,
      O => bus2ip_wrce(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f is
  port (
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f is
  signal CNTR_INCR_DECR_ADDN_F_I_n_1 : STD_LOGIC;
  signal CNTR_INCR_DECR_ADDN_F_I_n_2 : STD_LOGIC;
  signal FIFO_Full_reg_n_0 : STD_LOGIC;
  signal \fifo_full_p1__0\ : STD_LOGIC;
  signal sig_rd_empty : STD_LOGIC;
begin
CNTR_INCR_DECR_ADDN_F_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cntr_incr_decr_addn_f
     port map (
      FIFO_Full_reg => FIFO_Full_reg_n_0,
      Q(2) => sig_rd_empty,
      Q(1) => CNTR_INCR_DECR_ADDN_F_I_n_1,
      Q(0) => CNTR_INCR_DECR_ADDN_F_I_n_2,
      m_axi_aclk => m_axi_aclk,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
FIFO_Full_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \fifo_full_p1__0\,
      Q => FIFO_Full_reg_n_0,
      R => \out\
    );
fifo_full_p1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000400A2AA"
    )
        port map (
      I0 => CNTR_INCR_DECR_ADDN_F_I_n_1,
      I1 => sig_inhibit_rdy_n,
      I2 => FIFO_Full_reg_n_0,
      I3 => m_axi_bvalid,
      I4 => CNTR_INCR_DECR_ADDN_F_I_n_2,
      I5 => sig_rd_empty,
      O => \fifo_full_p1__0\
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sig_inhibit_rdy_n,
      I1 => FIFO_Full_reg_n_0,
      O => m_axi_bready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      D(35 downto 0) => D(35 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      WEBWE(0) => WEBWE(0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_x_pntrs is
  port (
    ram_full_i_reg : out STD_LOGIC;
    RD_PNTR_WR : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ram_full_i_reg_0 : out STD_LOGIC;
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d1_reg[8]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gc1.count_d2_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_tft_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_x_pntrs;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_x_pntrs is
  signal bin2gray : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\ : STD_LOGIC;
  signal \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\ : STD_LOGIC;
  signal \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\ : STD_LOGIC;
  signal gray2bin : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal p_0_out : STD_LOGIC;
  signal p_25_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_3_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_4_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_5_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_6_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal rd_pntr_gc : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_gc : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_25_out(8),
      I1 => Q(0),
      O => ram_full_i_reg
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_25_out(8),
      I1 => \gic0.gc1.count_d1_reg[8]\(0),
      O => ram_full_i_reg_0
    );
\gnxpm_cdc.gsync_stage[1].rd_stg_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized0\
     port map (
      D(8 downto 0) => p_3_out(8 downto 0),
      Q(8 downto 0) => wr_pntr_gc(8 downto 0),
      \out\ => \out\,
      sys_tft_clk => sys_tft_clk
    );
\gnxpm_cdc.gsync_stage[1].wr_stg_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized1\
     port map (
      AR(0) => AR(0),
      D(8 downto 0) => p_4_out(8 downto 0),
      Q(8 downto 0) => rd_pntr_gc(8 downto 0),
      m_axi_aclk => m_axi_aclk
    );
\gnxpm_cdc.gsync_stage[2].rd_stg_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized2\
     port map (
      D(8 downto 0) => p_3_out(8 downto 0),
      \Q_reg_reg[0]_0\ => \out\,
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(7) => p_0_out,
      \gnxpm_cdc.wr_pntr_bin_reg[7]\(6 downto 0) => gray2bin(6 downto 0),
      \out\(0) => p_5_out(8),
      sys_tft_clk => sys_tft_clk
    );
\gnxpm_cdc.gsync_stage[2].wr_stg_inst\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff__parameterized3\
     port map (
      AR(0) => AR(0),
      D(8 downto 0) => p_4_out(8 downto 0),
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(7) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(6) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(5) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(4) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(3) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(2) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(1) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      \gnxpm_cdc.rd_pntr_bin_reg[7]\(0) => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\,
      m_axi_aclk => m_axi_aclk,
      \out\(0) => p_6_out(8)
    );
\gnxpm_cdc.rd_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_8\,
      Q => RD_PNTR_WR(0)
    );
\gnxpm_cdc.rd_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_7\,
      Q => RD_PNTR_WR(1)
    );
\gnxpm_cdc.rd_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_6\,
      Q => RD_PNTR_WR(2)
    );
\gnxpm_cdc.rd_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_5\,
      Q => RD_PNTR_WR(3)
    );
\gnxpm_cdc.rd_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_4\,
      Q => RD_PNTR_WR(4)
    );
\gnxpm_cdc.rd_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_3\,
      Q => RD_PNTR_WR(5)
    );
\gnxpm_cdc.rd_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_2\,
      Q => RD_PNTR_WR(6)
    );
\gnxpm_cdc.rd_pntr_bin_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gnxpm_cdc.gsync_stage[2].wr_stg_inst_n_1\,
      Q => RD_PNTR_WR(7)
    );
\gnxpm_cdc.rd_pntr_bin_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_6_out(8),
      Q => p_25_out(8)
    );
\gnxpm_cdc.rd_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(0),
      I1 => \gc1.count_d2_reg[8]\(1),
      O => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(1),
      I1 => \gc1.count_d2_reg[8]\(2),
      O => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(2),
      I1 => \gc1.count_d2_reg[8]\(3),
      O => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(3),
      I1 => \gc1.count_d2_reg[8]\(4),
      O => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(4),
      I1 => \gc1.count_d2_reg[8]\(5),
      O => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(5),
      I1 => \gc1.count_d2_reg[8]\(6),
      O => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(6),
      I1 => \gc1.count_d2_reg[8]\(7),
      O => \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc1.count_d2_reg[8]\(7),
      I1 => \gc1.count_d2_reg[8]\(8),
      O => \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\
    );
\gnxpm_cdc.rd_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[0]_i_1_n_0\,
      Q => rd_pntr_gc(0)
    );
\gnxpm_cdc.rd_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[1]_i_1_n_0\,
      Q => rd_pntr_gc(1)
    );
\gnxpm_cdc.rd_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[2]_i_1_n_0\,
      Q => rd_pntr_gc(2)
    );
\gnxpm_cdc.rd_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[3]_i_1_n_0\,
      Q => rd_pntr_gc(3)
    );
\gnxpm_cdc.rd_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[4]_i_1_n_0\,
      Q => rd_pntr_gc(4)
    );
\gnxpm_cdc.rd_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[5]_i_1_n_0\,
      Q => rd_pntr_gc(5)
    );
\gnxpm_cdc.rd_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[6]_i_1_n_0\,
      Q => rd_pntr_gc(6)
    );
\gnxpm_cdc.rd_pntr_gc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gnxpm_cdc.rd_pntr_gc[7]_i_1_n_0\,
      Q => rd_pntr_gc(7)
    );
\gnxpm_cdc.rd_pntr_gc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => \gc1.count_d2_reg[8]\(8),
      Q => rd_pntr_gc(8)
    );
\gnxpm_cdc.wr_pntr_bin_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => gray2bin(0),
      Q => WR_PNTR_RD(0)
    );
\gnxpm_cdc.wr_pntr_bin_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => gray2bin(1),
      Q => WR_PNTR_RD(1)
    );
\gnxpm_cdc.wr_pntr_bin_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => gray2bin(2),
      Q => WR_PNTR_RD(2)
    );
\gnxpm_cdc.wr_pntr_bin_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => gray2bin(3),
      Q => WR_PNTR_RD(3)
    );
\gnxpm_cdc.wr_pntr_bin_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => gray2bin(4),
      Q => WR_PNTR_RD(4)
    );
\gnxpm_cdc.wr_pntr_bin_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => gray2bin(5),
      Q => WR_PNTR_RD(5)
    );
\gnxpm_cdc.wr_pntr_bin_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => gray2bin(6),
      Q => WR_PNTR_RD(6)
    );
\gnxpm_cdc.wr_pntr_bin_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => p_0_out,
      Q => WR_PNTR_RD(7)
    );
\gnxpm_cdc.wr_pntr_bin_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => \out\,
      D => p_5_out(8),
      Q => WR_PNTR_RD(8)
    );
\gnxpm_cdc.wr_pntr_gc[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(0),
      I1 => \gic0.gc1.count_d3_reg[8]\(1),
      O => bin2gray(0)
    );
\gnxpm_cdc.wr_pntr_gc[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(1),
      I1 => \gic0.gc1.count_d3_reg[8]\(2),
      O => bin2gray(1)
    );
\gnxpm_cdc.wr_pntr_gc[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(2),
      I1 => \gic0.gc1.count_d3_reg[8]\(3),
      O => bin2gray(2)
    );
\gnxpm_cdc.wr_pntr_gc[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(3),
      I1 => \gic0.gc1.count_d3_reg[8]\(4),
      O => bin2gray(3)
    );
\gnxpm_cdc.wr_pntr_gc[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(4),
      I1 => \gic0.gc1.count_d3_reg[8]\(5),
      O => bin2gray(4)
    );
\gnxpm_cdc.wr_pntr_gc[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(5),
      I1 => \gic0.gc1.count_d3_reg[8]\(6),
      O => bin2gray(5)
    );
\gnxpm_cdc.wr_pntr_gc[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(6),
      I1 => \gic0.gc1.count_d3_reg[8]\(7),
      O => bin2gray(6)
    );
\gnxpm_cdc.wr_pntr_gc[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc1.count_d3_reg[8]\(7),
      I1 => \gic0.gc1.count_d3_reg[8]\(8),
      O => bin2gray(7)
    );
\gnxpm_cdc.wr_pntr_gc_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(0),
      Q => wr_pntr_gc(0)
    );
\gnxpm_cdc.wr_pntr_gc_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(1),
      Q => wr_pntr_gc(1)
    );
\gnxpm_cdc.wr_pntr_gc_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(2),
      Q => wr_pntr_gc(2)
    );
\gnxpm_cdc.wr_pntr_gc_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(3),
      Q => wr_pntr_gc(3)
    );
\gnxpm_cdc.wr_pntr_gc_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(4),
      Q => wr_pntr_gc(4)
    );
\gnxpm_cdc.wr_pntr_gc_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(5),
      Q => wr_pntr_gc(5)
    );
\gnxpm_cdc.wr_pntr_gc_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(6),
      Q => wr_pntr_gc(6)
    );
\gnxpm_cdc.wr_pntr_gc_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => bin2gray(7),
      Q => wr_pntr_gc(7)
    );
\gnxpm_cdc.wr_pntr_gc_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \gic0.gc1.count_d3_reg[8]\(8),
      Q => wr_pntr_gc(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_as is
  port (
    \out\ : out STD_LOGIC;
    \gc1.count_d2_reg[8]\ : in STD_LOGIC;
    \gc1.count_d1_reg[8]\ : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_as;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_as is
  signal comp0 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  signal ram_empty_i0 : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  \out\ <= ram_empty_fb_i;
c0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_25
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      comp0 => comp0,
      \gc1.count_d2_reg[8]\ => \gc1.count_d2_reg[8]\
    );
c1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_26
     port map (
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      comp0 => comp0,
      \gc1.count_d1_reg[7]\(7 downto 0) => \gc1.count_d1_reg[7]\(7 downto 0),
      \gc1.count_d1_reg[8]\ => \gc1.count_d1_reg[8]\,
      \gpregsm1.curr_fwft_state_reg[1]\(1 downto 0) => \gpregsm1.curr_fwft_state_reg[1]\(1 downto 0),
      \out\ => ram_empty_fb_i,
      ram_empty_i0 => ram_empty_i0
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => ram_empty_i0,
      Q => ram_empty_fb_i,
      S => \Q_reg_reg[0]\
    );
ram_empty_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => ram_empty_i0,
      PRE => \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0),
      Q => ram_empty_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo is
  port (
    \out\ : out STD_LOGIC;
    ram_empty_i_reg : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    ram_full_i_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gfwft_rst_done.fwft_rst_done_reg\ : out STD_LOGIC;
    \gpregsm1.curr_fwft_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tft_rst : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    fwft_rst_done_q : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \arst_sync_q[1]_2\ : STD_LOGIC;
  signal \arst_sync_q[2]_3\ : STD_LOGIC;
  signal \arst_sync_q[3]_4\ : STD_LOGIC;
  signal \arst_sync_q[4]_5\ : STD_LOGIC;
  signal fifo_rrst_done : STD_LOGIC;
  signal fifo_wrst_done : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/sckt_rd_rst_fwft\ : STD_LOGIC;
  signal \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\ : STD_LOGIC;
  signal \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal rd_rst_active : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_comb : STD_LOGIC;
  signal rd_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of rd_rst_reg : signal is std.standard.true;
  signal \rrst_q[1]_6\ : STD_LOGIC;
  signal \rrst_q[2]_7\ : STD_LOGIC;
  signal \rrst_wr_q[2]_8\ : STD_LOGIC;
  signal \rrst_wr_q[3]_10\ : STD_LOGIC;
  signal \rrst_wr_q[4]_12\ : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_d1 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_d1 : signal is "true";
  signal rst_d2 : STD_LOGIC;
  attribute async_reg of rst_d2 : signal is "true";
  attribute msgon of rst_d2 : signal is "true";
  signal rst_d3 : STD_LOGIC;
  attribute async_reg of rst_d3 : signal is "true";
  attribute msgon of rst_d3 : signal is "true";
  signal rst_rd_reg1 : STD_LOGIC;
  attribute async_reg of rst_rd_reg1 : signal is "true";
  attribute msgon of rst_rd_reg1 : signal is "true";
  signal rst_rd_reg2 : STD_LOGIC;
  attribute async_reg of rst_rd_reg2 : signal is "true";
  attribute msgon of rst_rd_reg2 : signal is "true";
  signal rst_wr_reg1 : STD_LOGIC;
  attribute async_reg of rst_wr_reg1 : signal is "true";
  attribute msgon of rst_wr_reg1 : signal is "true";
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon of rst_wr_reg2 : signal is "true";
  signal sckt_wr_rst_i_q : STD_LOGIC;
  signal sckt_wrst_i : STD_LOGIC;
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_busy_i2_out : STD_LOGIC;
  signal wr_rst_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute DONT_TOUCH of wr_rst_reg : signal is std.standard.true;
  signal \wrst_ext_q[2]_9\ : STD_LOGIC;
  signal \wrst_ext_q[3]_11\ : STD_LOGIC;
  signal \wrst_ext_q[4]_13\ : STD_LOGIC;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is std.standard.true;
  attribute KEEP of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "yes";
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\ : label is "true";
  attribute ASYNC_REG_boolean of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "yes";
  attribute msgon of \ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\ : label is "true";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
  attribute DONT_TOUCH of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is std.standard.true;
  attribute KEEP of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\ : label is "no";
begin
  SR(0) <= \^sr\(0);
  \out\ <= \^out\;
  ram_empty_i_reg(1) <= rd_rst_reg(2);
  ram_empty_i_reg(0) <= rd_rst_reg(0);
  ram_full_i_reg <= rst_d2;
  ram_full_i_reg_0 <= rst_d3;
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => wr_rst_busy_i2_out,
      PRE => rst_wr_reg2,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => rst_d1,
      PRE => rst_wr_reg2,
      Q => rst_d2
    );
\grstd1.grst_full.grst_f.rst_d3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => rst_d2,
      I1 => \^sr\(0),
      O => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \grstd1.grst_full.grst_f.rst_d3_i_1_n_0\,
      PRE => rst_wr_reg2,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[1].arst_sync_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[1]_2\,
      m_axi_aclk => m_axi_aclk,
      \out\ => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_1
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[1]_2\,
      \Q_reg_reg[0]_1\ => \arst_sync_q[4]_5\,
      \Q_reg_reg[0]_2\ => \arst_sync_q[3]_4\,
      \Q_reg_reg[0]_3\ => \wrst_ext_q[4]_13\,
      \Q_reg_reg[0]_4\ => \rrst_wr_q[4]_12\,
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1\,
      \out\ => \arst_sync_q[2]_3\,
      sckt_wr_rst_i_q => sckt_wr_rst_i_q,
      sckt_wrst_i => sckt_wrst_i,
      wr_rst_busy_i2_out => wr_rst_busy_i2_out
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[3].arst_sync_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_2
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[3]_4\,
      m_axi_aclk => m_axi_aclk,
      \out\ => \arst_sync_q[2]_3\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[4].arst_sync_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_3
     port map (
      \Q_reg_reg[0]_0\ => \arst_sync_q[3]_4\,
      m_axi_aclk => m_axi_aclk,
      \out\ => \arst_sync_q[4]_5\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => fifo_wrst_done,
      I1 => fifo_rrst_done,
      I2 => \rrst_wr_q[4]_12\,
      I3 => \rrst_wr_q[3]_10\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_rrst_done_i_1_n_0\,
      Q => fifo_rrst_done,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F22"
    )
        port map (
      I0 => fifo_wrst_done,
      I1 => fifo_rrst_done,
      I2 => \wrst_ext_q[4]_13\,
      I3 => \wrst_ext_q[3]_11\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.fifo_wrst_done_i_1_n_0\,
      Q => fifo_wrst_done,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_4
     port map (
      \out\ => \rrst_q[1]_6\,
      sckt_wrst_i => sckt_wrst_i,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].rd_rst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_5
     port map (
      \Q_reg_reg[0]_0\ => p_9_out,
      m_axi_aclk => m_axi_aclk,
      \out\ => \^out\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[1].wr_rst_ext_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_6
     port map (
      m_axi_aclk => m_axi_aclk,
      \out\ => p_8_out,
      sckt_wrst_i => sckt_wrst_i
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_7
     port map (
      \Q_reg_reg[0]_0\ => \rrst_q[2]_7\,
      \out\ => \rrst_q[1]_6\,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].rd_rst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_8
     port map (
      \Q_reg_reg[0]_0\ => p_9_out,
      m_axi_aclk => m_axi_aclk,
      \out\ => \rrst_wr_q[2]_8\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[2].wr_rst_ext_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_9
     port map (
      \Q_reg_reg[0]_0\ => \wrst_ext_q[2]_9\,
      m_axi_aclk => m_axi_aclk,
      \out\ => p_8_out
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_10
     port map (
      E(0) => E(0),
      \Q_reg_reg[0]_0\ => \rrst_q[2]_7\,
      \Q_reg_reg[0]_1\ => p_14_out,
      \Q_reg_reg[0]_2\ => p_12_out,
      fwft_rst_done_q => fwft_rst_done_q,
      \gfwft_rst_done.fwft_rst_done_reg\ => \gfwft_rst_done.fwft_rst_done_reg\,
      \gpregsm1.curr_fwft_state_reg[1]\(0) => \gpregsm1.curr_fwft_state_reg[1]\(0),
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\,
      \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_0\ => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      \out\ => \^out\,
      rd_rst_active => rd_rst_active,
      sckt_rd_rst_fwft => \gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/sckt_rd_rst_fwft\,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_11
     port map (
      \Q_reg_reg[0]_0\ => \rrst_wr_q[3]_10\,
      m_axi_aclk => m_axi_aclk,
      \out\ => \rrst_wr_q[2]_8\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].wr_rst_ext_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_12
     port map (
      \Q_reg_reg[0]_0\ => \wrst_ext_q[2]_9\,
      m_axi_aclk => m_axi_aclk,
      \out\ => \wrst_ext_q[3]_11\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_13
     port map (
      \out\ => \^out\,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].rd_rst_wr_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_14
     port map (
      \Q_reg_reg[0]_0\ => \rrst_wr_q[3]_10\,
      m_axi_aclk => m_axi_aclk,
      \out\ => \rrst_wr_q[4]_12\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[4].wr_rst_ext_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_15
     port map (
      \grstd1.grst_full.grst_f.rst_d1_reg\ => \wrst_ext_q[4]_13\,
      m_axi_aclk => m_axi_aclk,
      \out\ => \wrst_ext_q[3]_11\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.safety_ckt_wr_rst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.garst_sync[2].arst_sync_inst_n_1\,
      Q => \^sr\(0),
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wr_rst_i_q_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => wr_rst_busy_i2_out,
      Q => sckt_wr_rst_i_q,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7700770F77007700"
    )
        port map (
      I0 => fifo_rrst_done,
      I1 => fifo_wrst_done,
      I2 => \rrst_wr_q[4]_12\,
      I3 => sckt_wrst_i,
      I4 => \wrst_ext_q[4]_13\,
      I5 => \arst_sync_q[4]_5\,
      O => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1_n_0\
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.sckt_wrst_i_i_1_n_0\,
      Q => sckt_wrst_i,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_active_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_1\,
      Q => rd_rst_active,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gsckt_wrst.gic_rst.garst_sync_ic[3].rd_rst_inst_n_2\,
      Q => \ngwrdrst.grst.g7serrst.gsckt_wrst.rd_rst_middle_reg_n_0\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gsckt_wrst.sckt_rd_rst_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \^out\,
      Q => \gntv_or_sync_fifo.gl0.rd/gr1.gr1_int.rfwft/sckt_rd_rst_fwft\,
      R => '0'
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].rrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_16
     port map (
      in0(0) => rd_rst_asreg,
      \out\ => p_10_out,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[1].wrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_17
     port map (
      in0(0) => wr_rst_asreg,
      m_axi_aclk => m_axi_aclk,
      \out\ => p_11_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].rrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_18
     port map (
      \Q_reg_reg[0]_0\ => p_12_out,
      \out\ => p_10_out,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[2].wrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_19
     port map (
      \Q_reg_reg[0]_0\ => p_13_out,
      m_axi_aclk => m_axi_aclk,
      \out\ => p_11_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_20
     port map (
      \Q_reg_reg[0]_0\ => p_12_out,
      in0(0) => rd_rst_asreg,
      \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\,
      \out\ => p_14_out,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_21
     port map (
      \Q_reg_reg[0]_0\ => p_13_out,
      in0(0) => wr_rst_asreg,
      m_axi_aclk => m_axi_aclk,
      \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\,
      \out\ => p_15_out
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].rrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_22
     port map (
      AS(0) => rd_rst_comb,
      in0(0) => rd_rst_asreg,
      \out\ => p_14_out,
      rd_rst_active => rd_rst_active,
      sys_tft_clk => sys_tft_clk
    );
\ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_synchronizer_ff_23
     port map (
      AS(0) => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      in0(0) => wr_rst_asreg,
      m_axi_aclk => m_axi_aclk,
      \out\ => p_15_out
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].rrst_inst_n_1\,
      PRE => rst_rd_reg2,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '0',
      PRE => rd_rst_comb,
      Q => rd_rst_reg(2)
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => '0',
      PRE => tft_rst,
      Q => rst_rd_reg1
    );
\ngwrdrst.grst.g7serrst.rst_rd_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => '1',
      D => rst_rd_reg1,
      PRE => tft_rst,
      Q => rst_rd_reg2
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '0',
      PRE => tft_rst,
      Q => rst_wr_reg1
    );
\ngwrdrst.grst.g7serrst.rst_wr_reg2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => rst_wr_reg1,
      PRE => tft_rst,
      Q => rst_wr_reg2
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[3].wrst_inst_n_1\,
      PRE => rst_wr_reg2,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(0)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => '0',
      PRE => \ngwrdrst.grst.g7serrst.gwrrd_rst_sync_stage[4].wrst_inst_n_0\,
      Q => wr_rst_reg(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_as is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gic0.gc1.count_d1_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_as;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_as is
  signal c2_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => AXI_BRAM_we_i,
      I1 => ram_full_fb_i,
      O => E(0)
    );
c1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare
     port map (
      Q(7 downto 0) => Q(7 downto 0),
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      comp1 => comp1,
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gnxpm_cdc.rd_pntr_bin_reg[8]\
    );
c2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_compare_24
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      comp1 => comp1,
      \gic0.gc1.count_d1_reg[7]\(7 downto 0) => \gic0.gc1.count_d1_reg[7]\(7 downto 0),
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gnxpm_cdc.rd_pntr_bin_reg[8]_0\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      \out\ => ram_full_fb_i,
      ram_full_i_reg => c2_n_0
    );
ram_full_fb_i_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => c2_n_0,
      Q => ram_full_fb_i,
      S => SR(0)
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => c2_n_0,
      PRE => \out\,
      Q => ram_full_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  port (
    bus2ip_wrce_d1_reg : out STD_LOGIC;
    bus2ip_wrce_d1_reg_0 : out STD_LOGIC;
    TFT_iic_xfer_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    TFT_iic_xfer_reg_0 : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_on_reg_reg : out STD_LOGIC;
    \IP2Bus_Data_reg[29]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[27]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[26]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[25]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[24]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[23]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[22]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[21]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[20]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[19]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[18]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[17]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[16]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[2]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[3]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[4]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[5]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[6]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[7]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[8]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[9]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[10]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    bus2ip_wrce_or : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 26 downto 0 );
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \IP2Bus_Data_reg[16]_0\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]_0\ : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    bus2ip_wrce_d1 : in STD_LOGIC;
    bus2ip_wrce_d2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bus2ip_rdce_d1 : in STD_LOGIC;
    bus2ip_rdce_d2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prmry_in : in STD_LOGIC;
    tft_dps : in STD_LOGIC;
    TFT_on_reg_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \TFT_iic_reg_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \TFT_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    TFT_iic_xfer : in STD_LOGIC;
    TFT_on_reg_reg_1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment is
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[2]\ : STD_LOGIC;
  signal \bus2ip_addr_i_reg_n_0_[3]\ : STD_LOGIC;
  signal bus2ip_rnw_i03_out : STD_LOGIC;
  signal bus2ip_rnw_i_i_1_n_0 : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair16";
begin
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
I_DECODER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_address_decoder
     port map (
      \IP2Bus_Data_reg[0]\ => \IP2Bus_Data_reg[0]\,
      \IP2Bus_Data_reg[10]\ => \IP2Bus_Data_reg[10]\,
      \IP2Bus_Data_reg[16]\ => \IP2Bus_Data_reg[16]\,
      \IP2Bus_Data_reg[16]_0\ => \IP2Bus_Data_reg[16]_0\,
      \IP2Bus_Data_reg[17]\ => \IP2Bus_Data_reg[17]\,
      \IP2Bus_Data_reg[18]\ => \IP2Bus_Data_reg[18]\,
      \IP2Bus_Data_reg[19]\ => \IP2Bus_Data_reg[19]\,
      \IP2Bus_Data_reg[1]\ => \IP2Bus_Data_reg[1]\,
      \IP2Bus_Data_reg[1]_0\ => \IP2Bus_Data_reg[1]_0\,
      \IP2Bus_Data_reg[20]\ => \IP2Bus_Data_reg[20]\,
      \IP2Bus_Data_reg[21]\ => \IP2Bus_Data_reg[21]\,
      \IP2Bus_Data_reg[22]\ => \IP2Bus_Data_reg[22]\,
      \IP2Bus_Data_reg[23]\ => \IP2Bus_Data_reg[23]\,
      \IP2Bus_Data_reg[24]\ => \IP2Bus_Data_reg[24]\,
      \IP2Bus_Data_reg[25]\ => \IP2Bus_Data_reg[25]\,
      \IP2Bus_Data_reg[26]\ => \IP2Bus_Data_reg[26]\,
      \IP2Bus_Data_reg[27]\ => \IP2Bus_Data_reg[27]\,
      \IP2Bus_Data_reg[28]\ => \IP2Bus_Data_reg[28]\,
      \IP2Bus_Data_reg[29]\ => \IP2Bus_Data_reg[29]\,
      \IP2Bus_Data_reg[2]\ => \IP2Bus_Data_reg[2]\,
      \IP2Bus_Data_reg[30]\ => \IP2Bus_Data_reg[30]\,
      \IP2Bus_Data_reg[31]\ => \IP2Bus_Data_reg[31]\,
      \IP2Bus_Data_reg[3]\ => \IP2Bus_Data_reg[3]\,
      \IP2Bus_Data_reg[4]\ => \IP2Bus_Data_reg[4]\,
      \IP2Bus_Data_reg[5]\ => \IP2Bus_Data_reg[5]\,
      \IP2Bus_Data_reg[6]\ => \IP2Bus_Data_reg[6]\,
      \IP2Bus_Data_reg[7]\ => \IP2Bus_Data_reg[7]\,
      \IP2Bus_Data_reg[8]\ => \IP2Bus_Data_reg[8]\,
      \IP2Bus_Data_reg[9]\ => \IP2Bus_Data_reg[9]\,
      Q => start2,
      \TFT_base_addr_reg[0]\(10 downto 0) => \TFT_base_addr_reg[0]\(10 downto 0),
      TFT_dps_reg_reg => TFT_dps_reg_reg,
      \TFT_iic_reg_addr_reg[0]\(7 downto 0) => \TFT_iic_reg_addr_reg[0]\(7 downto 0),
      \TFT_iic_reg_data_reg[0]\(6 downto 0) => Q(6 downto 0),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_iic_xfer_reg => TFT_iic_xfer_reg,
      TFT_iic_xfer_reg_0 => TFT_iic_xfer_reg_0,
      TFT_intr_en_reg => TFT_intr_en_reg,
      TFT_on_reg_reg => TFT_on_reg_reg,
      TFT_on_reg_reg_0 => TFT_on_reg_reg_0,
      TFT_on_reg_reg_1 => TFT_on_reg_reg_1,
      \bus2ip_addr_i_reg[2]\ => \bus2ip_addr_i_reg_n_0_[2]\,
      \bus2ip_addr_i_reg[3]\ => \bus2ip_addr_i_reg_n_0_[3]\,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_rnw_i_reg => bus2ip_rnw_i_reg_n_0,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      bus2ip_wrce_d1_reg => bus2ip_wrce_d1_reg,
      bus2ip_wrce_d1_reg_0 => bus2ip_wrce_d1_reg_0,
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => prmry_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      tft_dps => tft_dps
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => bus2ip_rnw_i03_out,
      I2 => s_axi_awaddr(0),
      I3 => \bus2ip_addr_i[3]_i_3_n_0\,
      I4 => \bus2ip_addr_i_reg_n_0_[2]\,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => bus2ip_rnw_i03_out,
      I2 => s_axi_awaddr(1),
      I3 => \bus2ip_addr_i[3]_i_3_n_0\,
      I4 => \bus2ip_addr_i_reg_n_0_[3]\,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => s_axi_arvalid,
      O => bus2ip_rnw_i03_out
    );
\bus2ip_addr_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[3]_i_3_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[2]\,
      R => bus2ip_sreset
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \bus2ip_addr_i_reg_n_0_[3]\,
      R => bus2ip_sreset
    );
bus2ip_rnw_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBF000000AA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => bus2ip_rnw_i_reg_n_0,
      O => bus2ip_rnw_i_i_1_n_0
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => bus2ip_rnw_i_i_1_n_0,
      Q => bus2ip_rnw_i_reg_n_0,
      R => bus2ip_sreset
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200020"
    )
        port map (
      I0 => bus2ip_wrce_d1,
      I1 => bus2ip_wrce_d2,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axi_bready,
      I5 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => bus2ip_sreset
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \s_axi_rdata_i[31]_i_1_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(0),
      Q => s_axi_rdata(0),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(10),
      Q => s_axi_rdata(10),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(11),
      Q => s_axi_rdata(11),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(12),
      Q => s_axi_rdata(12),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(13),
      Q => s_axi_rdata(13),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(14),
      Q => s_axi_rdata(14),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(15),
      Q => s_axi_rdata(15),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(1),
      Q => s_axi_rdata(1),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(16),
      Q => s_axi_rdata(16),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(17),
      Q => s_axi_rdata(17),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(18),
      Q => s_axi_rdata(18),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(19),
      Q => s_axi_rdata(19),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(20),
      Q => s_axi_rdata(20),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(21),
      Q => s_axi_rdata(21),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(22),
      Q => s_axi_rdata(22),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(23),
      Q => s_axi_rdata(23),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(24),
      Q => s_axi_rdata(24),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(2),
      Q => s_axi_rdata(2),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(25),
      Q => s_axi_rdata(25),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(26),
      Q => s_axi_rdata(26),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(3),
      Q => s_axi_rdata(3),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(4),
      Q => s_axi_rdata(4),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(5),
      Q => s_axi_rdata(5),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(6),
      Q => s_axi_rdata(6),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(7),
      Q => s_axi_rdata(7),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(8),
      Q => s_axi_rdata(8),
      R => bus2ip_sreset
    );
\s_axi_rdata_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => D(9),
      Q => s_axi_rdata(9),
      R => bus2ip_sreset
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020FFFF00200020"
    )
        port map (
      I0 => bus2ip_rdce_d1,
      I1 => bus2ip_rdce_d2,
      I2 => state(0),
      I3 => state(1),
      I4 => s_axi_rready,
      I5 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => bus2ip_sreset
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => bus2ip_sreset
    );
\state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44FC44FC77FC44FC"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => state(0),
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => bus2ip_wrce_d1,
      I5 => bus2ip_wrce_d2,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => p_2_in,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => s_axi_arready,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_2_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => bus2ip_sreset
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => bus2ip_sreset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f is
  port (
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    sig_inhibit_rdy_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f is
begin
I_SRL_FIFO_RBU_F: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_rbu_f
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      D(35 downto 0) => D(35 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      WEBWE(0) => WEBWE(0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic is
  port (
    fwft_rst_done_q : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_bm.dout_i_reg[35]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    tmp_ram_rd_en : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Q_reg_reg[0]_0\ : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic is
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \gr1.gr1_int.rfwft_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_2_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rpntr_n_0 : STD_LOGIC;
  signal rpntr_n_10 : STD_LOGIC;
begin
  Q(8 downto 0) <= \^q\(8 downto 0);
\gr1.gr1_int.rfwft\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_fwft
     port map (
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      E(0) => E(0),
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      \Q_reg_reg[0]_0\ => \Q_reg_reg[0]_0\,
      SR(0) => SR(0),
      fwft_rst_done_q => fwft_rst_done_q,
      \gc1.count_d1_reg[8]\(0) => p_8_out,
      \goreg_bm.dout_i_reg[35]\(0) => \goreg_bm.dout_i_reg[35]\(0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => \out\(0),
      \out\(1) => \gr1.gr1_int.rfwft_n_0\,
      \out\(0) => p_0_in(0),
      ram_empty_fb_i_reg => p_2_out,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
\gras.rsts\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_status_flags_as
     port map (
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      Q(7 downto 0) => \^q\(7 downto 0),
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      WR_PNTR_RD(7 downto 0) => WR_PNTR_RD(7 downto 0),
      \gc1.count_d1_reg[7]\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      \gc1.count_d1_reg[8]\ => rpntr_n_10,
      \gc1.count_d2_reg[8]\ => rpntr_n_0,
      \gpregsm1.curr_fwft_state_reg[1]\(1) => \gr1.gr1_int.rfwft_n_0\,
      \gpregsm1.curr_fwft_state_reg[1]\(0) => p_0_in(0),
      \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\(0) => \out\(0),
      \out\ => p_2_out,
      sys_tft_clk => sys_tft_clk
    );
rpntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_bin_cntr
     port map (
      E(0) => p_8_out,
      Q(8 downto 0) => \^q\(8 downto 0),
      \Q_reg_reg[0]\ => \Q_reg_reg[0]\,
      WR_PNTR_RD(0) => WR_PNTR_RD(8),
      \gc1.count_d2_reg[7]_0\(7 downto 0) => rd_pntr_plus1(7 downto 0),
      ram_empty_fb_i_reg => rpntr_n_0,
      ram_empty_fb_i_reg_0 => rpntr_n_10,
      sys_tft_clk => sys_tft_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic is
  port (
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gic0.gc1.count_d3_reg[8]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \gnxpm_cdc.rd_pntr_bin_reg[8]\ : in STD_LOGIC;
    \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    \grstd1.grst_full.grst_f.rst_d3_reg\ : in STD_LOGIC;
    RD_PNTR_WR : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic is
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  WEBWE(0) <= \^webwe\(0);
\gwas.wsts\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_status_flags_as
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      E(0) => \^webwe\(0),
      Q(7 downto 0) => p_14_out(7 downto 0),
      RD_PNTR_WR(7 downto 0) => RD_PNTR_WR(7 downto 0),
      SR(0) => SR(0),
      \gic0.gc1.count_d1_reg[7]\(7 downto 0) => wr_pntr_plus2(7 downto 0),
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gnxpm_cdc.rd_pntr_bin_reg[8]\,
      \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ => \gnxpm_cdc.rd_pntr_bin_reg[8]_0\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => \grstd1.grst_full.grst_f.rst_d3_reg\,
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\
    );
wpntr: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_bin_cntr
     port map (
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0),
      E(0) => \^webwe\(0),
      Q(8) => Q(0),
      Q(7 downto 0) => wr_pntr_plus2(7 downto 0),
      SR(0) => SR(0),
      \gic0.gc1.count_d3_reg[8]_0\(8) => \gic0.gc1.count_d3_reg[8]\(0),
      \gic0.gc1.count_d3_reg[8]_0\(7 downto 0) => p_14_out(7 downto 0),
      m_axi_aclk => m_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
  port (
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : out STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : out STD_LOGIC;
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    TFT_iic_xfer_reg : out STD_LOGIC;
    TFT_intr_en_reg : out STD_LOGIC;
    TFT_dps_reg_reg : out STD_LOGIC;
    TFT_on_reg_reg : out STD_LOGIC;
    \IP2Bus_Data_reg[29]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[27]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[26]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[25]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[24]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[23]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[22]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[21]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[20]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[19]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[18]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[17]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[16]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[2]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[3]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[4]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[5]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[6]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[7]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[8]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[9]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[10]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[0]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[28]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[30]\ : out STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    bus2ip_rdce_or : out STD_LOGIC;
    bus2ip_wrce_or : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 26 downto 0 );
    bus2ip_wrce : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \IP2Bus_Data_reg[16]_0\ : out STD_LOGIC;
    \IP2Bus_Data_reg[1]_0\ : out STD_LOGIC;
    cs_ce_clr : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    bus2ip_wrce_d1 : in STD_LOGIC;
    bus2ip_wrce_d2 : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bus2ip_rdce_d1 : in STD_LOGIC;
    bus2ip_rdce_d2 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    prmry_in : in STD_LOGIC;
    tft_dps : in STD_LOGIC;
    TFT_on_reg_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \TFT_iic_reg_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \TFT_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    TFT_iic_xfer : in STD_LOGIC;
    TFT_on_reg_reg_1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_slave_attachment
     port map (
      D(26 downto 0) => D(26 downto 0),
      \IP2Bus_Data_reg[0]\ => \IP2Bus_Data_reg[0]\,
      \IP2Bus_Data_reg[10]\ => \IP2Bus_Data_reg[10]\,
      \IP2Bus_Data_reg[16]\ => \IP2Bus_Data_reg[16]\,
      \IP2Bus_Data_reg[16]_0\ => \IP2Bus_Data_reg[16]_0\,
      \IP2Bus_Data_reg[17]\ => \IP2Bus_Data_reg[17]\,
      \IP2Bus_Data_reg[18]\ => \IP2Bus_Data_reg[18]\,
      \IP2Bus_Data_reg[19]\ => \IP2Bus_Data_reg[19]\,
      \IP2Bus_Data_reg[1]\ => \IP2Bus_Data_reg[1]\,
      \IP2Bus_Data_reg[1]_0\ => \IP2Bus_Data_reg[1]_0\,
      \IP2Bus_Data_reg[20]\ => \IP2Bus_Data_reg[20]\,
      \IP2Bus_Data_reg[21]\ => \IP2Bus_Data_reg[21]\,
      \IP2Bus_Data_reg[22]\ => \IP2Bus_Data_reg[22]\,
      \IP2Bus_Data_reg[23]\ => \IP2Bus_Data_reg[23]\,
      \IP2Bus_Data_reg[24]\ => \IP2Bus_Data_reg[24]\,
      \IP2Bus_Data_reg[25]\ => \IP2Bus_Data_reg[25]\,
      \IP2Bus_Data_reg[26]\ => \IP2Bus_Data_reg[26]\,
      \IP2Bus_Data_reg[27]\ => \IP2Bus_Data_reg[27]\,
      \IP2Bus_Data_reg[28]\ => \IP2Bus_Data_reg[28]\,
      \IP2Bus_Data_reg[29]\ => \IP2Bus_Data_reg[29]\,
      \IP2Bus_Data_reg[2]\ => \IP2Bus_Data_reg[2]\,
      \IP2Bus_Data_reg[30]\ => \IP2Bus_Data_reg[30]\,
      \IP2Bus_Data_reg[31]\ => \IP2Bus_Data_reg[31]\,
      \IP2Bus_Data_reg[3]\ => \IP2Bus_Data_reg[3]\,
      \IP2Bus_Data_reg[4]\ => \IP2Bus_Data_reg[4]\,
      \IP2Bus_Data_reg[5]\ => \IP2Bus_Data_reg[5]\,
      \IP2Bus_Data_reg[6]\ => \IP2Bus_Data_reg[6]\,
      \IP2Bus_Data_reg[7]\ => \IP2Bus_Data_reg[7]\,
      \IP2Bus_Data_reg[8]\ => \IP2Bus_Data_reg[8]\,
      \IP2Bus_Data_reg[9]\ => \IP2Bus_Data_reg[9]\,
      Q(6 downto 0) => Q(6 downto 0),
      \TFT_base_addr_reg[0]\(10 downto 0) => \TFT_base_addr_reg[0]\(10 downto 0),
      TFT_dps_reg_reg => TFT_dps_reg_reg,
      \TFT_iic_reg_addr_reg[0]\(7 downto 0) => \TFT_iic_reg_addr_reg[0]\(7 downto 0),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_iic_xfer_reg => Bus_RNW_reg,
      TFT_iic_xfer_reg_0 => TFT_iic_xfer_reg,
      TFT_intr_en_reg => TFT_intr_en_reg,
      TFT_on_reg_reg => TFT_on_reg_reg,
      TFT_on_reg_reg_0 => TFT_on_reg_reg_0,
      TFT_on_reg_reg_1 => TFT_on_reg_reg_1,
      bus2ip_rdce_d1 => bus2ip_rdce_d1,
      bus2ip_rdce_d2 => bus2ip_rdce_d2,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      bus2ip_wrce_d1 => bus2ip_wrce_d1,
      bus2ip_wrce_d1_reg => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      bus2ip_wrce_d1_reg_0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      bus2ip_wrce_d2 => bus2ip_wrce_d2,
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => prmry_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(1 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(1 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(26 downto 0) => s_axi_rdata(26 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tft_dps => tft_dps
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo is
  port (
    sig_reset_reg : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo is
  signal \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\ : STD_LOGIC;
  signal sig_inhibit_rdy_n : STD_LOGIC;
  signal sig_inhibit_rdy_n_i_1_n_0 : STD_LOGIC;
  signal sig_init_done : STD_LOGIC;
  signal sig_init_done_i_1_n_0 : STD_LOGIC;
  signal \^sig_reset_reg\ : STD_LOGIC;
begin
  sig_reset_reg <= \^sig_reset_reg\;
\USE_SRL_FIFO.I_SYNC_FIFO\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srl_fifo_f
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_inhibit_rdy_n => sig_inhibit_rdy_n
    );
sig_inhibit_rdy_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sig_init_done,
      I1 => sig_inhibit_rdy_n,
      O => sig_inhibit_rdy_n_i_1_n_0
    );
sig_inhibit_rdy_n_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_inhibit_rdy_n_i_1_n_0,
      Q => sig_inhibit_rdy_n,
      R => \out\
    );
sig_init_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^sig_reset_reg\,
      I1 => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      I2 => sig_init_done,
      I3 => \out\,
      O => sig_init_done_i_1_n_0
    );
sig_init_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_init_done_i_1_n_0,
      Q => sig_init_done,
      R => '0'
    );
sig_init_reg2_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \^sig_reset_reg\,
      Q => \GEN_OMIT_STORE_FORWARD.I_DATA_CNTL_STATUS_FIFO/sig_init_reg2\,
      S => \out\
    );
sig_init_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => \out\,
      Q => \^sig_reset_reg\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      D(35 downto 0) => D(35 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      WEBWE(0) => WEBWE(0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl is
  port (
    sig_reset_reg : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl is
begin
I_WRESP_STATUS_FIFO: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_fifo
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_reset_reg => sig_reset_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth is
begin
\gnbram.gnativebmg.native_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      D(35 downto 0) => D(35 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      WEBWE(0) => WEBWE(0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr is
  port (
    sig_pcc2data_calc_error : out STD_LOGIC;
    sig_m_valid_out_reg : out STD_LOGIC;
    sig_llink_busy_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    sig_rsc2stat_status_valid : out STD_LOGIC;
    sig_error_sh_reg_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_doing_read_reg : out STD_LOGIC;
    \sig_btt_cntr_reg[7]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sig_sm_ld_calc1_reg_reg : out STD_LOGIC;
    sig_sm_ld_calc1_reg_reg_0 : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_pcc_taking_command : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    sig_error_sh_reg_reg_0 : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \AXI_BRAM_data_i_reg[40]\ : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sig_rd_addr_valid_reg0 : in STD_LOGIC;
    sig_rd_sts_tag_reg0 : in STD_LOGIC;
    sig_cmd2all_doing_read : in STD_LOGIC;
    \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sig_cmd_reset_reg_reg : in STD_LOGIC;
    sig_push_cmd_reg : in STD_LOGIC;
    sig_cmd2pcc_cmd_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 24 downto 0 );
    sig_llink2rd_allow_addr_req : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    sig_status_reg_empty : in STD_LOGIC;
    sig_llink_busy_reg_0 : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 35 downto 0 );
    sig_cmd_mst_be : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_push_status1_out : in STD_LOGIC;
    md_error : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \sig_cmd_mst_be_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr is
  signal I_MSTR_PCC_n_15 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_2 : STD_LOGIC;
  signal I_RD_DATA_CNTL_n_3 : STD_LOGIC;
  signal I_READ_STREAM_SKID_BUF_n_5 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal sig_addr2data_addr_posted : STD_LOGIC;
  signal sig_addr2stat_cmd_fifo_empty : STD_LOGIC;
  signal \^sig_error_sh_reg_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal sig_next_eof_reg : STD_LOGIC;
  signal sig_pcc2addr_addr : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal sig_pcc2addr_burst : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sig_pcc2data_calc_error\ : STD_LOGIC;
  signal sig_pcc2data_cmd_cmplt : STD_LOGIC;
  signal sig_pcc2data_cmd_valid : STD_LOGIC;
  signal sig_pcc2data_dre_src_align : STD_LOGIC;
  signal sig_pcc2data_eof : STD_LOGIC;
  signal sig_pcc2data_len : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sig_pcc2data_saddr_lsb : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal sig_pcc2data_sequential : STD_LOGIC;
  signal sig_push_addr_reg1_out : STD_LOGIC;
  signal sig_push_rd_sts_reg : STD_LOGIC;
  signal sig_rd_sts_decerr_reg0 : STD_LOGIC;
  signal sig_rd_sts_interr_reg0 : STD_LOGIC;
  signal sig_rd_sts_reg_full0 : STD_LOGIC;
  signal sig_rd_sts_slverr_reg0 : STD_LOGIC;
  signal sig_rdc2pcc_cmd_ready : STD_LOGIC;
  signal sig_rdc2rdskid_tlast : STD_LOGIC;
  signal sig_rdskid2rdc_tready : STD_LOGIC;
  signal sig_reset_reg : STD_LOGIC;
  signal sig_rsc2rdc_ready : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 6 downto 5 );
  signal \^sig_rsc2stat_status_valid\ : STD_LOGIC;
begin
  sig_error_sh_reg_reg(0) <= \^sig_error_sh_reg_reg\(0);
  sig_pcc2data_calc_error <= \^sig_pcc2data_calc_error\;
  sig_rsc2stat_status_valid <= \^sig_rsc2stat_status_valid\;
I_ADDR_CNTL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_addr_cntl
     port map (
      Q(31 downto 3) => sig_pcc2addr_addr(31 downto 3),
      Q(2 downto 1) => sig_pcc2data_saddr_lsb(2 downto 1),
      Q(0) => sig_pcc2data_dre_src_align,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      \out\ => sig_addr2data_addr_posted,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_rd_addr_valid_reg0 => sig_rd_addr_valid_reg0,
      sig_rdwr_reset_reg_reg => \out\,
      \sig_xfer_len_reg_reg[7]\(7 downto 0) => sig_pcc2data_len(7 downto 0)
    );
I_MSTR_PCC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_pcc
     port map (
      D(0) => D(0),
      \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\ => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\,
      \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2 downto 0) => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2 downto 0),
      Q(24 downto 0) => Q(24 downto 0),
      SR(0) => SR(0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sig_addr2stat_cmd_fifo_empty => sig_addr2stat_cmd_fifo_empty,
      \sig_btt_cntr_reg[7]_0\(1 downto 0) => \sig_btt_cntr_reg[7]\(1 downto 0),
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_mst_be(0) => sig_cmd_mst_be(0),
      \sig_cmd_mst_be_reg[3]\(1 downto 0) => \sig_cmd_mst_be_reg[3]\(1 downto 0),
      sig_cmd_reset_reg_reg => sig_cmd_reset_reg_reg,
      sig_last_dbeat_reg => I_MSTR_PCC_n_15,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      \sig_next_addr_reg_reg[31]\(31 downto 3) => sig_pcc2addr_addr(31 downto 3),
      \sig_next_addr_reg_reg[31]\(2 downto 1) => sig_pcc2data_saddr_lsb(2 downto 1),
      \sig_next_addr_reg_reg[31]\(0) => sig_pcc2data_dre_src_align,
      \sig_next_len_reg_reg[7]\(7 downto 0) => sig_pcc2data_len(7 downto 0),
      sig_pcc2addr_burst(0) => sig_pcc2addr_burst(0),
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_addr_reg1_out => sig_push_addr_reg1_out,
      sig_push_cmd_reg => sig_push_cmd_reg,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready,
      sig_sm_ld_calc1_reg_reg_0 => sig_sm_ld_calc1_reg_reg,
      sig_sm_ld_calc1_reg_reg_1 => sig_sm_ld_calc1_reg_reg_0
    );
I_RD_DATA_CNTL: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rddata_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_rlast => m_axi_rlast,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      \out\ => \out\,
      p_0_in => p_0_in,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_next_eof_reg => sig_next_eof_reg,
      sig_next_eof_reg_reg_0 => I_RD_DATA_CNTL_n_2,
      sig_pcc2data_calc_error => \^sig_pcc2data_calc_error\,
      sig_pcc2data_cmd_cmplt => sig_pcc2data_cmd_cmplt,
      sig_pcc2data_cmd_valid => sig_pcc2data_cmd_valid,
      sig_pcc2data_eof => sig_pcc2data_eof,
      sig_pcc2data_sequential => sig_pcc2data_sequential,
      sig_posted_to_axi_reg => sig_addr2data_addr_posted,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_interr_reg0 => sig_rd_sts_interr_reg0,
      sig_rd_sts_interr_reg_reg(0) => \^sig_error_sh_reg_reg\(0),
      sig_rd_sts_reg_full0 => sig_rd_sts_reg_full0,
      sig_rd_sts_slverr_reg0 => sig_rd_sts_slverr_reg0,
      sig_rdc2pcc_cmd_ready => sig_rdc2pcc_cmd_ready,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status(1 downto 0) => sig_rsc2stat_status(6 downto 5),
      sig_rsc2stat_status_valid => \^sig_rsc2stat_status_valid\,
      sig_s_ready_dup_reg => I_RD_DATA_CNTL_n_3,
      sig_s_ready_out_reg => I_READ_STREAM_SKID_BUF_n_5,
      sig_s_ready_out_reg_0 => sig_rdskid2rdc_tready,
      sig_status_reg_empty => sig_status_reg_empty,
      \sig_xfer_len_reg_reg[0]\ => I_MSTR_PCC_n_15,
      \sig_xfer_len_reg_reg[7]\(7 downto 0) => sig_pcc2data_len(7 downto 0)
    );
I_RD_STATUS_CNTLR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_status_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      md_error => md_error,
      p_0_in => p_0_in,
      sig_error_sh_reg_reg(0) => \^sig_error_sh_reg_reg\(0),
      sig_error_sh_reg_reg_0 => sig_error_sh_reg_reg_0,
      sig_push_rd_sts_reg => sig_push_rd_sts_reg,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd_sts_decerr_reg0 => sig_rd_sts_decerr_reg0,
      sig_rd_sts_interr_reg0 => sig_rd_sts_interr_reg0,
      sig_rd_sts_reg_full0 => sig_rd_sts_reg_full0,
      sig_rd_sts_slverr_reg0 => sig_rd_sts_slverr_reg0,
      sig_rd_sts_tag_reg0 => sig_rd_sts_tag_reg0,
      sig_rsc2rdc_ready => sig_rsc2rdc_ready,
      sig_rsc2stat_status(1 downto 0) => sig_rsc2stat_status(6 downto 5),
      sig_rsc2stat_status_valid => \^sig_rsc2stat_status_valid\
    );
I_READ_STREAM_SKID_BUF: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf
     port map (
      \AXI_BRAM_data_i_reg[40]\(35 downto 0) => \AXI_BRAM_data_i_reg[40]\(35 downto 0),
      E(0) => E(0),
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      m_axi_aclk => m_axi_aclk,
      m_axi_rdata(35 downto 0) => m_axi_rdata(35 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      \out\ => sig_rdskid2rdc_tready,
      \sig_addr_posted_cntr_reg[0]\ => I_RD_DATA_CNTL_n_2,
      \sig_addr_posted_cntr_reg[0]_0\ => I_RD_DATA_CNTL_n_3,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_llink_busy_reg => sig_llink_busy_reg,
      sig_llink_busy_reg_0 => sig_llink_busy_reg_0,
      sig_m_valid_out_reg_0 => sig_m_valid_out_reg,
      sig_next_cmd_cmplt_reg_reg => I_READ_STREAM_SKID_BUF_n_5,
      sig_next_eof_reg => sig_next_eof_reg,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rdc2rdskid_tlast => sig_rdc2rdskid_tlast,
      sig_rdwr_reset_reg_reg => \out\,
      sig_reset_reg => sig_reset_reg
    );
I_WRITE_MMAP_SKID_BUF: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid2mm_buf
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => m_axi_wstrb(0),
      m_axi_wvalid => m_axi_wvalid,
      \out\ => \out\,
      sig_reset_reg => sig_reset_reg
    );
I_WRITE_STRM_SKID_BUF: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_skid_buf_27
     port map (
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sig_reset_reg => sig_reset_reg
    );
I_WR_STATUS_CNTLR: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_wr_status_cntl
     port map (
      m_axi_aclk => m_axi_aclk,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      \out\ => \out\,
      sig_reset_reg => sig_reset_reg
    );
sig_doing_read_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_cmd2all_doing_read,
      Q => sig_doing_read_reg,
      R => \out\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 is
  port (
    D : out STD_LOGIC_VECTOR ( 35 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5 is
begin
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5_synth
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      D(35 downto 0) => D(35 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      WEBWE(0) => WEBWE(0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst is
  port (
    \out\ : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    sig_parent_done : out STD_LOGIC;
    sig_calc_error_pushed : out STD_LOGIC;
    sig_cmd_empty_reg : out STD_LOGIC;
    bus2ip_mst_cmplt : out STD_LOGIC;
    md_error : out STD_LOGIC;
    bus2ip_mst_cmdack : out STD_LOGIC;
    sig_rd2llink_strm_tlast : out STD_LOGIC;
    sig_llink2cmd_rd_busy : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    sig_calc_error_reg0 : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    bus2ip_mstrd_eof_n : out STD_LOGIC;
    sig_rd_discontinue : out STD_LOGIC;
    AXI_BRAM_we_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bready : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 35 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_aclk : in STD_LOGIC;
    sig_push_cmd_reg : in STD_LOGIC;
    ip2bus_mstrd_req : in STD_LOGIC;
    ip2bus_mst_type : in STD_LOGIC;
    \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    scndry_out : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IP2Bus_MstRd_dst_rdy : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 35 downto 0 );
    eof_n : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    \tft_base_addr_reg[0]\ : in STD_LOGIC_VECTOR ( 24 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst is
  signal \I_ADDR_CNTL/sig_rd_addr_valid_reg0\ : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_10 : STD_LOGIC;
  signal I_CMD_STATUS_MODULE_n_9 : STD_LOGIC;
  signal \I_MSTR_PCC/sig_btt_cntr0\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal I_RD_LLINK_ADAPTER_n_6 : STD_LOGIC;
  signal \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\ : STD_LOGIC;
  signal I_RD_WR_CNTRL_MODULE_n_20 : STD_LOGIC;
  signal \I_READ_STREAM_SKID_BUF/p_0_in2_in\ : STD_LOGIC;
  signal \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\ : STD_LOGIC;
  signal \^md_error\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC;
  signal \^sig_calc_error_reg0\ : STD_LOGIC;
  signal sig_cmd2all_doing_read : STD_LOGIC;
  signal sig_cmd2pcc_cmd_valid : STD_LOGIC;
  signal sig_cmd_mst_addr : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal sig_cmd_mst_be : STD_LOGIC_VECTOR ( 3 to 3 );
  signal sig_cmd_mstrd_req0 : STD_LOGIC;
  signal sig_doing_read_reg : STD_LOGIC;
  signal \^sig_llink2cmd_rd_busy\ : STD_LOGIC;
  signal sig_llink2rd_allow_addr_req : STD_LOGIC;
  signal sig_pcc2data_calc_error : STD_LOGIC;
  signal sig_pcc_taking_command : STD_LOGIC;
  signal sig_push_status1_out : STD_LOGIC;
  signal \^sig_rd2llink_strm_tlast\ : STD_LOGIC;
  signal sig_rd2llink_strm_tvalid : STD_LOGIC;
  signal sig_rd_llink_enable : STD_LOGIC;
  signal sig_rdwr2llink_int_err : STD_LOGIC;
  signal sig_rsc2stat_status : STD_LOGIC_VECTOR ( 4 to 4 );
  signal sig_rsc2stat_status_valid : STD_LOGIC;
  signal sig_rst2cmd_stat_reset : STD_LOGIC;
  signal sig_rst2llink_reset : STD_LOGIC;
  signal sig_status_reg_empty : STD_LOGIC;
begin
  md_error <= \^md_error\;
  \out\ <= \^out\;
  sig_calc_error_reg0 <= \^sig_calc_error_reg0\;
  sig_llink2cmd_rd_busy <= \^sig_llink2cmd_rd_busy\;
  sig_rd2llink_strm_tlast <= \^sig_rd2llink_strm_tlast\;
I_CMD_STATUS_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_cmd_status
     port map (
      D(1) => I_CMD_STATUS_MODULE_n_9,
      D(0) => I_CMD_STATUS_MODULE_n_10,
      Q(24 downto 0) => sig_cmd_mst_addr(31 downto 7),
      SR(0) => sig_cmd_mstrd_req0,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      ip2bus_mst_type => ip2bus_mst_type,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      m_axi_aclk => m_axi_aclk,
      md_error => \^md_error\,
      \out\ => sig_rst2cmd_stat_reset,
      sig_btt_cntr0(1) => \I_MSTR_PCC/sig_btt_cntr0\(7),
      sig_btt_cntr0(0) => \I_MSTR_PCC/sig_btt_cntr0\(3),
      sig_calc_error_reg_reg => \^sig_calc_error_reg0\,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_cmplt_reg_reg_0 => bus2ip_mst_cmplt,
      sig_cmd_empty_reg => sig_cmd_empty_reg,
      sig_cmd_mst_be(0) => sig_cmd_mst_be(3),
      sig_doing_read_reg => sig_doing_read_reg,
      sig_llink_busy_reg => \^sig_llink2cmd_rd_busy\,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_cmd_reg => sig_push_cmd_reg,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd_addr_valid_reg0 => \I_ADDR_CNTL/sig_rd_addr_valid_reg0\,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rd_sts_slverr_reg_reg => I_RD_WR_CNTRL_MODULE_n_20,
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      sig_rdwr_reset_reg_reg => \^out\,
      sig_rsc2stat_status(0) => sig_rsc2stat_status(4),
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_status_reg_empty => sig_status_reg_empty,
      \tft_base_addr_reg[0]\(24 downto 0) => \tft_base_addr_reg[0]\(24 downto 0)
    );
I_RD_LLINK_ADAPTER: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_llink
     port map (
      AXI_BRAM_we_i_reg => AXI_BRAM_we_i_reg,
      E(0) => \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      eof_n => eof_n,
      eof_n_reg => \^sig_llink2cmd_rd_busy\,
      eof_n_reg_0 => sig_rd_discontinue,
      m_axi_aclk => m_axi_aclk,
      \out\ => sig_rst2llink_reset,
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_last_reg_out_reg => \^sig_rd2llink_strm_tlast\,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_m_valid_dup_reg => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_m_valid_out_reg => I_RD_LLINK_ADAPTER_n_6,
      sig_m_valid_out_reg_0 => sig_rd2llink_strm_tvalid,
      sig_rd_llink_enable => sig_rd_llink_enable,
      sig_rdwr2llink_int_err => sig_rdwr2llink_int_err,
      \trans_cnt_reg[4]\(0) => E(0)
    );
I_RD_WR_CNTRL_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_rd_wr_cntlr
     port map (
      \AXI_BRAM_data_i_reg[40]\(35 downto 0) => Q(35 downto 0),
      D(0) => D(0),
      E(0) => \I_READ_STREAM_SKID_BUF/sig_data_reg_out_en\,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\ => \^sig_calc_error_reg0\,
      \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2 downto 0) => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2 downto 0),
      Q(24 downto 0) => sig_cmd_mst_addr(31 downto 7),
      SR(0) => sig_cmd_mstrd_req0,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(0) => m_axi_arburst(0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => m_axi_arsize(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(35 downto 0) => m_axi_rdata(35 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => m_axi_wstrb(0),
      m_axi_wvalid => m_axi_wvalid,
      md_error => \^md_error\,
      \out\ => \^out\,
      \sig_btt_cntr_reg[7]\(1) => \I_MSTR_PCC/sig_btt_cntr0\(7),
      \sig_btt_cntr_reg[7]\(0) => \I_MSTR_PCC/sig_btt_cntr0\(3),
      sig_cmd2all_doing_read => sig_cmd2all_doing_read,
      sig_cmd2pcc_cmd_valid => sig_cmd2pcc_cmd_valid,
      sig_cmd_mst_be(0) => sig_cmd_mst_be(3),
      \sig_cmd_mst_be_reg[3]\(1) => I_CMD_STATUS_MODULE_n_9,
      \sig_cmd_mst_be_reg[3]\(0) => I_CMD_STATUS_MODULE_n_10,
      sig_cmd_reset_reg_reg => sig_rst2cmd_stat_reset,
      sig_doing_read_reg => sig_doing_read_reg,
      sig_error_sh_reg_reg(0) => sig_rsc2stat_status(4),
      sig_error_sh_reg_reg_0 => I_RD_WR_CNTRL_MODULE_n_20,
      sig_llink2cmd_rd_busy => \^sig_llink2cmd_rd_busy\,
      sig_llink2rd_allow_addr_req => sig_llink2rd_allow_addr_req,
      sig_llink_busy_reg => sig_rd2llink_strm_tvalid,
      sig_llink_busy_reg_0 => I_RD_LLINK_ADAPTER_n_6,
      sig_m_valid_out_reg => \I_READ_STREAM_SKID_BUF/p_0_in2_in\,
      sig_pcc2data_calc_error => sig_pcc2data_calc_error,
      sig_pcc_taking_command => sig_pcc_taking_command,
      sig_push_cmd_reg => sig_push_cmd_reg,
      sig_push_status1_out => sig_push_status1_out,
      sig_rd2llink_strm_tlast => \^sig_rd2llink_strm_tlast\,
      sig_rd_addr_valid_reg0 => \I_ADDR_CNTL/sig_rd_addr_valid_reg0\,
      sig_rd_sts_tag_reg0 => \I_RD_STATUS_CNTLR/sig_rd_sts_tag_reg0\,
      sig_rsc2stat_status_valid => sig_rsc2stat_status_valid,
      sig_sm_ld_calc1_reg_reg => sig_parent_done,
      sig_sm_ld_calc1_reg_reg_0 => sig_calc_error_pushed,
      sig_status_reg_empty => sig_status_reg_empty
    );
I_RESET_MODULE: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst_reset
     port map (
      \INFERRED_GEN.cnt_i_reg[2]\ => \^out\,
      m_axi_aclk => m_axi_aclk,
      m_axi_aresetn => m_axi_aresetn,
      \out\ => sig_rst2cmd_stat_reset,
      scndry_out => scndry_out,
      sig_rd_error_reg_reg => sig_rst2llink_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    tmp_ram_rd_en : in STD_LOGIC;
    WEBWE : in STD_LOGIC_VECTOR ( 0 to 0 );
    \out\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \gic0.gc1.count_d3_reg[8]\ : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \AXI_BRAM_data_i_reg[8]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory is
  signal doutb : STD_LOGIC_VECTOR ( 35 downto 0 );
  signal fifo_out_data : STD_LOGIC_VECTOR ( 35 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[3]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[4]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \BRAM_TFT_B_data[5]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[2]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[3]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[4]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \BRAM_TFT_G_data[5]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[1]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[4]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \BRAM_TFT_R_data[5]_i_1\ : label is "soft_lutpair62";
begin
\BRAM_TFT_B_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(18),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(0),
      O => \BRAM_TFT_B_data_reg[5]\(0)
    );
\BRAM_TFT_B_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(19),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(1),
      O => \BRAM_TFT_B_data_reg[5]\(1)
    );
\BRAM_TFT_B_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(20),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(2),
      O => \BRAM_TFT_B_data_reg[5]\(2)
    );
\BRAM_TFT_B_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(21),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(3),
      O => \BRAM_TFT_B_data_reg[5]\(3)
    );
\BRAM_TFT_B_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(22),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(4),
      O => \BRAM_TFT_B_data_reg[5]\(4)
    );
\BRAM_TFT_B_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(23),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(5),
      O => \BRAM_TFT_B_data_reg[5]\(5)
    );
\BRAM_TFT_G_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(24),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(6),
      O => \BRAM_TFT_G_data_reg[5]\(0)
    );
\BRAM_TFT_G_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(25),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(7),
      O => \BRAM_TFT_G_data_reg[5]\(1)
    );
\BRAM_TFT_G_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(26),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(8),
      O => \BRAM_TFT_G_data_reg[5]\(2)
    );
\BRAM_TFT_G_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(27),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(9),
      O => \BRAM_TFT_G_data_reg[5]\(3)
    );
\BRAM_TFT_G_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(28),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(10),
      O => \BRAM_TFT_G_data_reg[5]\(4)
    );
\BRAM_TFT_G_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(29),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(11),
      O => \BRAM_TFT_G_data_reg[5]\(5)
    );
\BRAM_TFT_R_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(30),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(12),
      O => D(0)
    );
\BRAM_TFT_R_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(31),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(13),
      O => D(1)
    );
\BRAM_TFT_R_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(32),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(14),
      O => D(2)
    );
\BRAM_TFT_R_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(33),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(15),
      O => D(3)
    );
\BRAM_TFT_R_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(34),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(16),
      O => D(4)
    );
\BRAM_TFT_R_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => fifo_out_data(35),
      I1 => \BRAM_TFT_addr_reg[9]\(0),
      I2 => fifo_out_data(17),
      O => D(5)
    );
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_3_5
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => \AXI_BRAM_data_i_reg[8]\(35 downto 0),
      D(35 downto 0) => doutb(35 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      WEBWE(0) => WEBWE(0),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => \gic0.gc1.count_d3_reg[8]\(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => \out\,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(0),
      Q => fifo_out_data(0),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(10),
      Q => fifo_out_data(10),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(11),
      Q => fifo_out_data(11),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(12),
      Q => fifo_out_data(12),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(13),
      Q => fifo_out_data(13),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(14),
      Q => fifo_out_data(14),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(15),
      Q => fifo_out_data(15),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(16),
      Q => fifo_out_data(16),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(17),
      Q => fifo_out_data(17),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(18),
      Q => fifo_out_data(18),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(19),
      Q => fifo_out_data(19),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(1),
      Q => fifo_out_data(1),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(20),
      Q => fifo_out_data(20),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(21),
      Q => fifo_out_data(21),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(22),
      Q => fifo_out_data(22),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(23),
      Q => fifo_out_data(23),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(24),
      Q => fifo_out_data(24),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(25),
      Q => fifo_out_data(25),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(26),
      Q => fifo_out_data(26),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(27),
      Q => fifo_out_data(27),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(28),
      Q => fifo_out_data(28),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(29),
      Q => fifo_out_data(29),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(2),
      Q => fifo_out_data(2),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(30),
      Q => fifo_out_data(30),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(31),
      Q => fifo_out_data(31),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[32]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(32),
      Q => fifo_out_data(32),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[33]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(33),
      Q => fifo_out_data(33),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[34]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(34),
      Q => fifo_out_data(34),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[35]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(35),
      Q => fifo_out_data(35),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(3),
      Q => fifo_out_data(3),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(4),
      Q => fifo_out_data(4),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(5),
      Q => fifo_out_data(5),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(6),
      Q => fifo_out_data(6),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(7),
      Q => fifo_out_data(7),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(8),
      Q => fifo_out_data(8),
      R => SR(0)
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => sys_tft_clk,
      CE => E(0),
      D => doutb(9),
      Q => fifo_out_data(9),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    tft_rst : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo is
  signal fwft_rst_done : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_9\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_0\ : STD_LOGIC;
  signal \gr1.gr1_int.rfwft/fwft_rst_done_q\ : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_13_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_14_out : STD_LOGIC_VECTOR ( 8 to 8 );
  signal p_24_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_25_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_6_out : STD_LOGIC;
  signal rd_rst_i : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal rst_full_ff_i : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal rstblk_n_0 : STD_LOGIC;
  signal rstblk_n_5 : STD_LOGIC;
  signal rstblk_n_6 : STD_LOGIC;
  signal rstblk_n_7 : STD_LOGIC;
  signal tmp_ram_rd_en : STD_LOGIC;
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 8 to 8 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_x_pntrs
     port map (
      AR(0) => rstblk_n_5,
      Q(0) => p_14_out(8),
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      WR_PNTR_RD(8 downto 0) => p_24_out(8 downto 0),
      \gc1.count_d2_reg[8]\(8 downto 0) => p_0_out(8 downto 0),
      \gic0.gc1.count_d1_reg[8]\(0) => wr_pntr_plus2(8),
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => p_13_out(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => rstblk_n_0,
      ram_full_i_reg => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      ram_full_i_reg_0 => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      sys_tft_clk => sys_tft_clk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rd_logic
     port map (
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      E(0) => fwft_rst_done,
      Q(8 downto 0) => p_0_out(8 downto 0),
      \Q_reg_reg[0]\ => rstblk_n_0,
      \Q_reg_reg[0]_0\ => rstblk_n_6,
      SR(0) => rstblk_n_7,
      WR_PNTR_RD(8 downto 0) => p_24_out(8 downto 0),
      fwft_rst_done_q => \gr1.gr1_int.rfwft/fwft_rst_done_q\,
      \goreg_bm.dout_i_reg[35]\(0) => p_6_out,
      \out\(0) => rd_rst_i(2),
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_wr_logic
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\(8 downto 0) => p_13_out(8 downto 0),
      Q(0) => wr_pntr_plus2(8),
      RD_PNTR_WR(7 downto 0) => p_25_out(7 downto 0),
      SR(0) => rstblk_n_5,
      WEBWE(0) => \gntv_or_sync_fifo.gl0.wr_n_0\,
      \gic0.gc1.count_d3_reg[8]\(0) => p_14_out(8),
      \gnxpm_cdc.rd_pntr_bin_reg[8]\ => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      \gnxpm_cdc.rd_pntr_bin_reg[8]_0\ => \gntv_or_sync_fifo.gcx.clkx_n_9\,
      \grstd1.grst_full.grst_f.rst_d3_reg\ => rst_full_gen_i,
      m_axi_aclk => m_axi_aclk,
      \out\ => rst_full_ff_i
    );
\gntv_or_sync_fifo.mem\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory
     port map (
      \AXI_BRAM_data_i_reg[8]\(35 downto 0) => Q(35 downto 0),
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      E(0) => p_6_out,
      Q(8 downto 0) => p_0_out(8 downto 0),
      SR(0) => rd_rst_i(0),
      WEBWE(0) => \gntv_or_sync_fifo.gl0.wr_n_0\,
      \gic0.gc1.count_d3_reg[8]\(8 downto 0) => p_13_out(8 downto 0),
      m_axi_aclk => m_axi_aclk,
      \out\ => rstblk_n_0,
      sys_tft_clk => sys_tft_clk,
      tmp_ram_rd_en => tmp_ram_rd_en
    );
rstblk: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_blk_ramfifo
     port map (
      E(0) => fwft_rst_done,
      SR(0) => rstblk_n_5,
      fwft_rst_done_q => \gr1.gr1_int.rfwft/fwft_rst_done_q\,
      \gfwft_rst_done.fwft_rst_done_reg\ => rstblk_n_6,
      \gpregsm1.curr_fwft_state_reg[1]\(0) => rstblk_n_7,
      m_axi_aclk => m_axi_aclk,
      \out\ => rstblk_n_0,
      ram_empty_i_reg(1) => rd_rst_i(2),
      ram_empty_i_reg(0) => rd_rst_i(0),
      ram_full_i_reg => rst_full_ff_i,
      ram_full_i_reg_0 => rst_full_gen_i,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    tft_rst : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top is
begin
\grf.rf\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_ramfifo
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    tft_rst : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3_synth is
begin
\gconvfifo.rf\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_top
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3 is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    tft_rst : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3 is
begin
inst_fifo_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3_synth
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg is
  port (
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_G_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \BRAM_TFT_B_data_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    tft_rst : in STD_LOGIC;
    \BRAM_TFT_addr_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg is
begin
\USE_2N_DEPTH.V6_S6_AND_LATER.I_ASYNC_FIFO_BRAM\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_1_3
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5 downto 0) => \BRAM_TFT_B_data_reg[5]\(5 downto 0),
      \BRAM_TFT_G_data_reg[5]\(5 downto 0) => \BRAM_TFT_G_data_reg[5]\(5 downto 0),
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg[9]\(0),
      D(5 downto 0) => D(5 downto 0),
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_line_buffer is
  port (
    \gen_vga_if.FDR_R5\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_vga_if.FDR_G5\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_vga_if.FDR_B5\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sys_tft_clk : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 35 downto 0 );
    tft_rst : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    AXI_BRAM_we_i : in STD_LOGIC;
    H_bp_cnt_tc_reg : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_line_buffer;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_line_buffer is
  signal \BRAM_TFT_B_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_B_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_G_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \BRAM_TFT_R_data_reg_n_0_[5]\ : STD_LOGIC;
  signal BRAM_TFT_addr : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \BRAM_TFT_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal BRAM_TFT_addr_0 : STD_LOGIC_VECTOR ( 0 to 9 );
  signal \BRAM_TFT_addr_reg_n_0_[9]\ : STD_LOGIC;
  signal RAM_n_0 : STD_LOGIC;
  signal RAM_n_1 : STD_LOGIC;
  signal RAM_n_10 : STD_LOGIC;
  signal RAM_n_11 : STD_LOGIC;
  signal RAM_n_12 : STD_LOGIC;
  signal RAM_n_13 : STD_LOGIC;
  signal RAM_n_14 : STD_LOGIC;
  signal RAM_n_15 : STD_LOGIC;
  signal RAM_n_16 : STD_LOGIC;
  signal RAM_n_17 : STD_LOGIC;
  signal RAM_n_2 : STD_LOGIC;
  signal RAM_n_3 : STD_LOGIC;
  signal RAM_n_4 : STD_LOGIC;
  signal RAM_n_5 : STD_LOGIC;
  signal RAM_n_6 : STD_LOGIC;
  signal RAM_n_7 : STD_LOGIC;
  signal RAM_n_8 : STD_LOGIC;
  signal RAM_n_9 : STD_LOGIC;
  signal tc : STD_LOGIC;
  signal tc_reg_inv_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[0]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[1]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[2]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[5]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[6]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[7]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \BRAM_TFT_addr[8]_i_1\ : label is "soft_lutpair74";
begin
\BLUE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[0]\,
      Q => \gen_vga_if.FDR_B5\(0),
      R => H_bp_cnt_tc_reg(0)
    );
\BLUE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[1]\,
      Q => \gen_vga_if.FDR_B5\(1),
      R => H_bp_cnt_tc_reg(0)
    );
\BLUE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[2]\,
      Q => \gen_vga_if.FDR_B5\(2),
      R => H_bp_cnt_tc_reg(0)
    );
\BLUE_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[3]\,
      Q => \gen_vga_if.FDR_B5\(3),
      R => H_bp_cnt_tc_reg(0)
    );
\BLUE_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[4]\,
      Q => \gen_vga_if.FDR_B5\(4),
      R => H_bp_cnt_tc_reg(0)
    );
\BLUE_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_B_data_reg_n_0_[5]\,
      Q => \gen_vga_if.FDR_B5\(5),
      R => H_bp_cnt_tc_reg(0)
    );
\BRAM_TFT_B_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_17,
      Q => \BRAM_TFT_B_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_16,
      Q => \BRAM_TFT_B_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_15,
      Q => \BRAM_TFT_B_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_14,
      Q => \BRAM_TFT_B_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_13,
      Q => \BRAM_TFT_B_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_B_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_12,
      Q => \BRAM_TFT_B_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_11,
      Q => \BRAM_TFT_G_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_10,
      Q => \BRAM_TFT_G_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_9,
      Q => \BRAM_TFT_G_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_8,
      Q => \BRAM_TFT_G_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_7,
      Q => \BRAM_TFT_G_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_G_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_6,
      Q => \BRAM_TFT_G_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_5,
      Q => \BRAM_TFT_R_data_reg_n_0_[0]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_4,
      Q => \BRAM_TFT_R_data_reg_n_0_[1]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_3,
      Q => \BRAM_TFT_R_data_reg_n_0_[2]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_2,
      Q => \BRAM_TFT_R_data_reg_n_0_[3]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_1,
      Q => \BRAM_TFT_R_data_reg_n_0_[4]\,
      R => tft_rst
    );
\BRAM_TFT_R_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => RAM_n_0,
      Q => \BRAM_TFT_R_data_reg_n_0_[5]\,
      R => tft_rst
    );
\BRAM_TFT_addr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4F0F0B0"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(0),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(2),
      O => BRAM_TFT_addr_0(0)
    );
\BRAM_TFT_addr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => BRAM_TFT_addr(5),
      I1 => BRAM_TFT_addr(7),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(8),
      I4 => BRAM_TFT_addr(6),
      I5 => BRAM_TFT_addr(4),
      O => \BRAM_TFT_addr[0]_i_4_n_0\
    );
\BRAM_TFT_addr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(2),
      I3 => BRAM_TFT_addr(1),
      O => BRAM_TFT_addr_0(1)
    );
\BRAM_TFT_addr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBB4404"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(0),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(2),
      O => BRAM_TFT_addr_0(2)
    );
\BRAM_TFT_addr[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      O => BRAM_TFT_addr_0(3)
    );
\BRAM_TFT_addr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => BRAM_TFT_addr(5),
      I1 => BRAM_TFT_addr(7),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(8),
      I4 => BRAM_TFT_addr(6),
      I5 => BRAM_TFT_addr(4),
      O => BRAM_TFT_addr_0(4)
    );
\BRAM_TFT_addr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => BRAM_TFT_addr(6),
      I1 => BRAM_TFT_addr(8),
      I2 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I3 => BRAM_TFT_addr(7),
      I4 => BRAM_TFT_addr(5),
      O => BRAM_TFT_addr_0(5)
    );
\BRAM_TFT_addr[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => BRAM_TFT_addr(7),
      I1 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I2 => BRAM_TFT_addr(8),
      I3 => BRAM_TFT_addr(6),
      O => BRAM_TFT_addr_0(6)
    );
\BRAM_TFT_addr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => BRAM_TFT_addr(8),
      I1 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I2 => BRAM_TFT_addr(7),
      O => BRAM_TFT_addr_0(7)
    );
\BRAM_TFT_addr[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \BRAM_TFT_addr_reg_n_0_[9]\,
      I1 => BRAM_TFT_addr(8),
      O => BRAM_TFT_addr_0(8)
    );
\BRAM_TFT_addr[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \BRAM_TFT_addr_reg_n_0_[9]\,
      O => BRAM_TFT_addr_0(9)
    );
\BRAM_TFT_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(0),
      Q => BRAM_TFT_addr(0),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(1),
      Q => BRAM_TFT_addr(1),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(2),
      Q => BRAM_TFT_addr(2),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(3),
      Q => BRAM_TFT_addr(3),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(4),
      Q => BRAM_TFT_addr(4),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(5),
      Q => BRAM_TFT_addr(5),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(6),
      Q => BRAM_TFT_addr(6),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(7),
      Q => BRAM_TFT_addr(7),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(8),
      Q => BRAM_TFT_addr(8),
      R => SR(0)
    );
\BRAM_TFT_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => BRAM_TFT_addr_0(9),
      Q => \BRAM_TFT_addr_reg_n_0_[9]\,
      R => SR(0)
    );
\GREEN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[0]\,
      Q => \gen_vga_if.FDR_G5\(0),
      R => H_bp_cnt_tc_reg(0)
    );
\GREEN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[1]\,
      Q => \gen_vga_if.FDR_G5\(1),
      R => H_bp_cnt_tc_reg(0)
    );
\GREEN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[2]\,
      Q => \gen_vga_if.FDR_G5\(2),
      R => H_bp_cnt_tc_reg(0)
    );
\GREEN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[3]\,
      Q => \gen_vga_if.FDR_G5\(3),
      R => H_bp_cnt_tc_reg(0)
    );
\GREEN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[4]\,
      Q => \gen_vga_if.FDR_G5\(4),
      R => H_bp_cnt_tc_reg(0)
    );
\GREEN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_G_data_reg_n_0_[5]\,
      Q => \gen_vga_if.FDR_G5\(5),
      R => H_bp_cnt_tc_reg(0)
    );
RAM: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_async_fifo_fg
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      \BRAM_TFT_B_data_reg[5]\(5) => RAM_n_12,
      \BRAM_TFT_B_data_reg[5]\(4) => RAM_n_13,
      \BRAM_TFT_B_data_reg[5]\(3) => RAM_n_14,
      \BRAM_TFT_B_data_reg[5]\(2) => RAM_n_15,
      \BRAM_TFT_B_data_reg[5]\(1) => RAM_n_16,
      \BRAM_TFT_B_data_reg[5]\(0) => RAM_n_17,
      \BRAM_TFT_G_data_reg[5]\(5) => RAM_n_6,
      \BRAM_TFT_G_data_reg[5]\(4) => RAM_n_7,
      \BRAM_TFT_G_data_reg[5]\(3) => RAM_n_8,
      \BRAM_TFT_G_data_reg[5]\(2) => RAM_n_9,
      \BRAM_TFT_G_data_reg[5]\(1) => RAM_n_10,
      \BRAM_TFT_G_data_reg[5]\(0) => RAM_n_11,
      \BRAM_TFT_addr_reg[9]\(0) => \BRAM_TFT_addr_reg_n_0_[9]\,
      D(5) => RAM_n_0,
      D(4) => RAM_n_1,
      D(3) => RAM_n_2,
      D(2) => RAM_n_3,
      D(1) => RAM_n_4,
      D(0) => RAM_n_5,
      Q(35 downto 0) => Q(35 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
\RED_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[0]\,
      Q => \gen_vga_if.FDR_R5\(0),
      R => H_bp_cnt_tc_reg(0)
    );
\RED_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[1]\,
      Q => \gen_vga_if.FDR_R5\(1),
      R => H_bp_cnt_tc_reg(0)
    );
\RED_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[2]\,
      Q => \gen_vga_if.FDR_R5\(2),
      R => H_bp_cnt_tc_reg(0)
    );
\RED_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[3]\,
      Q => \gen_vga_if.FDR_R5\(3),
      R => H_bp_cnt_tc_reg(0)
    );
\RED_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[4]\,
      Q => \gen_vga_if.FDR_R5\(4),
      R => H_bp_cnt_tc_reg(0)
    );
\RED_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => \BRAM_TFT_R_data_reg_n_0_[5]\,
      Q => \gen_vga_if.FDR_R5\(5),
      R => H_bp_cnt_tc_reg(0)
    );
tc_inv_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFBFFFF"
    )
        port map (
      I0 => \BRAM_TFT_addr[0]_i_4_n_0\,
      I1 => BRAM_TFT_addr(3),
      I2 => BRAM_TFT_addr(2),
      I3 => BRAM_TFT_addr(1),
      I4 => BRAM_TFT_addr(0),
      O => tc
    );
tc_reg_inv: unisim.vcomponents.FDSE
     port map (
      C => sys_tft_clk,
      CE => tc_reg_inv_n_0,
      D => tc,
      Q => tc_reg_inv_n_0,
      S => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_controller is
  port (
    ip2intc_irpt : out STD_LOGIC;
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    TFT_iic_xfer : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 26 downto 0 );
    bus2ip_rdce_d1 : out STD_LOGIC;
    bus2ip_rdce_d2 : out STD_LOGIC;
    bus2ip_wrce_d1 : out STD_LOGIC;
    bus2ip_wrce_d2 : out STD_LOGIC;
    eof_n : out STD_LOGIC;
    prmry_in : out STD_LOGIC;
    \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    cs_ce_clr : out STD_LOGIC;
    sig_push_cmd_reg : out STD_LOGIC;
    ip2bus_mstrd_req : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    scndry_out : out STD_LOGIC;
    \IP2Bus_Data_reg[31]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : out STD_LOGIC_VECTOR ( 10 downto 0 );
    \IP2Bus_Data_reg[16]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \sig_cmd_mst_addr_reg[31]\ : out STD_LOGIC_VECTOR ( 24 downto 0 );
    ip2bus_mst_type : out STD_LOGIC;
    IP2Bus_MstRd_dst_rdy : out STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    bus2ip_mreset : in STD_LOGIC;
    bus2ip_sreset : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    C0 : in STD_LOGIC;
    bus2ip_wrce : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Bus_RNW_reg_reg : in STD_LOGIC;
    bus2ip_sreset_reg : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    Bus_RNW_reg_reg_2 : in STD_LOGIC;
    Bus_RNW_reg_reg_3 : in STD_LOGIC;
    Bus_RNW_reg_reg_4 : in STD_LOGIC;
    Bus_RNW_reg_reg_5 : in STD_LOGIC;
    Bus_RNW_reg_reg_6 : in STD_LOGIC;
    Bus_RNW_reg_reg_7 : in STD_LOGIC;
    Bus_RNW_reg_reg_8 : in STD_LOGIC;
    Bus_RNW_reg_reg_9 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ : in STD_LOGIC;
    TFT_iic_xfer_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : in STD_LOGIC;
    Bus_RNW_reg_reg_10 : in STD_LOGIC;
    bus2ip_sreset_reg_0 : in STD_LOGIC;
    bus2ip_rdce_or : in STD_LOGIC;
    bus2ip_wrce_or : in STD_LOGIC;
    bus2ip_mstrd_eof_n : in STD_LOGIC;
    sig_m_valid_out_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    sig_cmd_empty_reg : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 26 downto 0 );
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : in STD_LOGIC;
    bus2ip_mst_cmdack : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sig_data_reg_out_reg[23]\ : in STD_LOGIC_VECTOR ( 35 downto 0 );
    sig_llink2cmd_rd_busy : in STD_LOGIC;
    sig_rd_discontinue : in STD_LOGIC;
    sig_rd2llink_strm_tlast : in STD_LOGIC;
    bus2ip_mst_cmplt : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_controller is
  signal AXI_BRAM_data_i : STD_LOGIC_VECTOR ( 8 to 61 );
  signal AXI_BRAM_we_i : STD_LOGIC;
  signal BLUE_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal BRAM_TFT_addr0 : STD_LOGIC;
  signal DE_i : STD_LOGIC;
  signal \^generate_level_p_s_cdc.multi_bit.for_in_cdc_to[10].cross2_plevel_in2scndry_in_cdc_to\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\ : STD_LOGIC;
  signal GET_LINE_SYNC_n_0 : STD_LOGIC;
  signal GET_LINE_SYNC_n_2 : STD_LOGIC;
  signal GET_LINE_SYNC_n_3 : STD_LOGIC;
  signal GREEN_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal HSYNC_U2_n_3 : STD_LOGIC;
  signal HSYNC_U2_n_5 : STD_LOGIC;
  signal HSYNC_i : STD_LOGIC;
  signal I2C_done_tft : STD_LOGIC;
  signal \^ip2bus_mstrd_dst_rdy\ : STD_LOGIC;
  signal RED0 : STD_LOGIC;
  signal RED_i : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal TFT_ON_MAXI_SYNC_n_0 : STD_LOGIC;
  signal TFT_ON_MAXI_SYNC_n_2 : STD_LOGIC;
  signal VSYNC_U3_n_4 : STD_LOGIC;
  signal VSYNC_i : STD_LOGIC;
  signal axi_rst_d1 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of axi_rst_d1 : signal is "true";
  signal axi_rst_d6 : STD_LOGIC;
  attribute async_reg of axi_rst_d6 : signal is "true";
  signal clk_ce_neg0 : STD_LOGIC;
  signal clk_ce_pos0 : STD_LOGIC;
  signal clk_stb_d1 : STD_LOGIC;
  signal \^eof_n\ : STD_LOGIC;
  signal get_line_start : STD_LOGIC;
  signal get_line_start_d1 : STD_LOGIC;
  signal h_pix_cnt_tc : STD_LOGIC;
  signal \^ip2bus_mst_type\ : STD_LOGIC;
  signal \^ip2bus_mstrd_req\ : STD_LOGIC;
  signal ip2intc_irpt_i : STD_LOGIC;
  signal line_cnt : STD_LOGIC_VECTOR ( 0 to 8 );
  signal \line_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \line_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal mn_request_set : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_in_d1_cdc_from : STD_LOGIC;
  signal p_in_d1_cdc_from_1 : STD_LOGIC;
  signal p_in_d1_cdc_from_3 : STD_LOGIC;
  signal \^prmry_in\ : STD_LOGIC;
  signal prmry_in_xored : STD_LOGIC;
  signal prmry_in_xored_0 : STD_LOGIC;
  signal prmry_in_xored_2 : STD_LOGIC;
  signal \^scndry_out\ : STD_LOGIC;
  signal tft_base_addr_d2 : STD_LOGIC_VECTOR ( 0 to 10 );
  signal tft_on_reg_bram_d2 : STD_LOGIC;
  signal tft_rst : STD_LOGIC;
  signal tft_status_i : STD_LOGIC;
  signal trans_cnt1 : STD_LOGIC;
  signal \trans_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \trans_cnt_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \trans_cnt_reg__0\ : STD_LOGIC_VECTOR ( 0 to 4 );
  signal trans_cnt_tc : STD_LOGIC;
  signal trans_cnt_tc_pulse_i : STD_LOGIC;
  signal v_bp_pulse : STD_LOGIC;
  signal vsync_intr : STD_LOGIC;
  signal vsync_rst : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of FDR_IP2INTC_Irpt : label is "FDR";
  attribute box_type : string;
  attribute box_type of FDR_IP2INTC_Irpt : label is "PRIMITIVE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of axi_rst_d1_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of axi_rst_d1_reg : label is "yes";
  attribute ASYNC_REG_boolean of axi_rst_d6_reg : label is std.standard.true;
  attribute KEEP of axi_rst_d6_reg : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \line_cnt[0]_i_4\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \line_cnt[4]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \trans_cnt[0]_i_3\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \trans_cnt[1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \trans_cnt[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \trans_cnt[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \trans_cnt_i[0]_i_2\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of trans_cnt_tc_pulse_i_i_1 : label is "soft_lutpair89";
begin
  \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(10 downto 0) <= \^generate_level_p_s_cdc.multi_bit.for_in_cdc_to[10].cross2_plevel_in2scndry_in_cdc_to\(10 downto 0);
  \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ <= \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\;
  IP2Bus_MstRd_dst_rdy <= \^ip2bus_mstrd_dst_rdy\;
  eof_n <= \^eof_n\;
  ip2bus_mst_type <= \^ip2bus_mst_type\;
  ip2bus_mstrd_req <= \^ip2bus_mstrd_req\;
  prmry_in <= \^prmry_in\;
  scndry_out <= \^scndry_out\;
\AXI_BRAM_data_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(33),
      Q => AXI_BRAM_data_i(10),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(32),
      Q => AXI_BRAM_data_i(11),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(31),
      Q => AXI_BRAM_data_i(12),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(30),
      Q => AXI_BRAM_data_i(13),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(29),
      Q => AXI_BRAM_data_i(16),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(28),
      Q => AXI_BRAM_data_i(17),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(27),
      Q => AXI_BRAM_data_i(18),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(26),
      Q => AXI_BRAM_data_i(19),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(25),
      Q => AXI_BRAM_data_i(20),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(24),
      Q => AXI_BRAM_data_i(21),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(23),
      Q => AXI_BRAM_data_i(24),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(22),
      Q => AXI_BRAM_data_i(25),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(21),
      Q => AXI_BRAM_data_i(26),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(20),
      Q => AXI_BRAM_data_i(27),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(19),
      Q => AXI_BRAM_data_i(28),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(18),
      Q => AXI_BRAM_data_i(29),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(17),
      Q => AXI_BRAM_data_i(40),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(16),
      Q => AXI_BRAM_data_i(41),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(15),
      Q => AXI_BRAM_data_i(42),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(14),
      Q => AXI_BRAM_data_i(43),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(13),
      Q => AXI_BRAM_data_i(44),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(12),
      Q => AXI_BRAM_data_i(45),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(11),
      Q => AXI_BRAM_data_i(48),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(10),
      Q => AXI_BRAM_data_i(49),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(9),
      Q => AXI_BRAM_data_i(50),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(8),
      Q => AXI_BRAM_data_i(51),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(7),
      Q => AXI_BRAM_data_i(52),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(6),
      Q => AXI_BRAM_data_i(53),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(5),
      Q => AXI_BRAM_data_i(56),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(4),
      Q => AXI_BRAM_data_i(57),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(3),
      Q => AXI_BRAM_data_i(58),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(2),
      Q => AXI_BRAM_data_i(59),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(1),
      Q => AXI_BRAM_data_i(60),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(0),
      Q => AXI_BRAM_data_i(61),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(35),
      Q => AXI_BRAM_data_i(8),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\AXI_BRAM_data_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \sig_data_reg_out_reg[23]\(34),
      Q => AXI_BRAM_data_i(9),
      R => TFT_ON_MAXI_SYNC_n_0
    );
AXI_BRAM_we_i_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => sig_m_valid_out_reg,
      Q => AXI_BRAM_we_i,
      R => TFT_ON_MAXI_SYNC_n_0
    );
BASE_ADDR_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized3\
     port map (
      \TFT_base_addr_reg[0]\(10 downto 0) => \^generate_level_p_s_cdc.multi_bit.for_in_cdc_to[10].cross2_plevel_in2scndry_in_cdc_to\(10 downto 0),
      m_axi_aclk => m_axi_aclk,
      scndry_vect_out(10) => tft_base_addr_d2(0),
      scndry_vect_out(9) => tft_base_addr_d2(1),
      scndry_vect_out(8) => tft_base_addr_d2(2),
      scndry_vect_out(7) => tft_base_addr_d2(3),
      scndry_vect_out(6) => tft_base_addr_d2(4),
      scndry_vect_out(5) => tft_base_addr_d2(5),
      scndry_vect_out(4) => tft_base_addr_d2(6),
      scndry_vect_out(3) => tft_base_addr_d2(7),
      scndry_vect_out(2) => tft_base_addr_d2(8),
      scndry_vect_out(1) => tft_base_addr_d2(9),
      scndry_vect_out(0) => tft_base_addr_d2(10)
    );
FDR_IP2INTC_Irpt: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => m_axi_aclk,
      CE => '1',
      D => ip2intc_irpt_i,
      Q => ip2intc_irpt,
      R => TFT_ON_MAXI_SYNC_n_0
    );
GET_LINE_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized0\
     port map (
      E(0) => \line_cnt[0]_i_2_n_0\,
      IP2Bus_MstRd_Req_reg => GET_LINE_SYNC_n_0,
      IP2Bus_MstRd_dst_rdy => \^ip2bus_mstrd_dst_rdy\,
      IP2Bus_MstRd_dst_rdy_reg => GET_LINE_SYNC_n_3,
      IP2Bus_Mst_Type_reg => GET_LINE_SYNC_n_2,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      get_line_start_d1 => get_line_start_d1,
      ip2bus_mst_type => \^ip2bus_mst_type\,
      ip2bus_mstrd_req => \^ip2bus_mstrd_req\,
      m_axi_aclk => m_axi_aclk,
      mn_request_set => mn_request_set,
      scndry_out => \^scndry_out\,
      sig_llink_busy_reg(0) => E(0),
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      \trans_cnt_reg[1]\ => \trans_cnt_i[0]_i_2_n_0\
    );
HSYNC_U2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_h_sync
     port map (
      \BRAM_TFT_addr_reg[0]\(0) => BRAM_TFT_addr0,
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2\ => I2C_done_tft,
      HSYNC_i => HSYNC_i,
      \RED_reg[5]\ => HSYNC_U2_n_3,
      SR(0) => RED0,
      \VSYNC_cs_reg[1]\ => VSYNC_U3_n_4,
      clk_ce_neg0 => clk_ce_neg0,
      clk_ce_pos0 => clk_ce_pos0,
      clk_stb_d1 => clk_stb_d1,
      clk_stb_d1_reg => HSYNC_U2_n_5,
      h_pix_cnt_tc => h_pix_cnt_tc,
      \out\ => axi_rst_d6,
      scndry_out => tft_on_reg_bram_d2,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      vsync_rst => vsync_rst
    );
I2C_DONE_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized6\
     port map (
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d2_0\ => tft_on_reg_bram_d2,
      \out\ => axi_rst_d6,
      scndry_out => I2C_done_tft,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
INTR_EN_SYNC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync
     port map (
      ip2intc_irpt_i => ip2intc_irpt_i,
      m_axi_aclk => m_axi_aclk,
      prmry_in => \^prmry_in\,
      vsync_intr => vsync_intr
    );
IP2Bus_MstRd_Req_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => GET_LINE_SYNC_n_0,
      Q => \^ip2bus_mstrd_req\,
      R => '0'
    );
IP2Bus_MstRd_dst_rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => GET_LINE_SYNC_n_3,
      Q => \^ip2bus_mstrd_dst_rdy\,
      R => '0'
    );
IP2Bus_Mst_Type_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => GET_LINE_SYNC_n_2,
      Q => \^ip2bus_mst_type\,
      R => '0'
    );
LINE_BUFFER_U4: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_line_buffer
     port map (
      AXI_BRAM_we_i => AXI_BRAM_we_i,
      H_bp_cnt_tc_reg(0) => RED0,
      Q(35) => AXI_BRAM_data_i(8),
      Q(34) => AXI_BRAM_data_i(9),
      Q(33) => AXI_BRAM_data_i(10),
      Q(32) => AXI_BRAM_data_i(11),
      Q(31) => AXI_BRAM_data_i(12),
      Q(30) => AXI_BRAM_data_i(13),
      Q(29) => AXI_BRAM_data_i(16),
      Q(28) => AXI_BRAM_data_i(17),
      Q(27) => AXI_BRAM_data_i(18),
      Q(26) => AXI_BRAM_data_i(19),
      Q(25) => AXI_BRAM_data_i(20),
      Q(24) => AXI_BRAM_data_i(21),
      Q(23) => AXI_BRAM_data_i(24),
      Q(22) => AXI_BRAM_data_i(25),
      Q(21) => AXI_BRAM_data_i(26),
      Q(20) => AXI_BRAM_data_i(27),
      Q(19) => AXI_BRAM_data_i(28),
      Q(18) => AXI_BRAM_data_i(29),
      Q(17) => AXI_BRAM_data_i(40),
      Q(16) => AXI_BRAM_data_i(41),
      Q(15) => AXI_BRAM_data_i(42),
      Q(14) => AXI_BRAM_data_i(43),
      Q(13) => AXI_BRAM_data_i(44),
      Q(12) => AXI_BRAM_data_i(45),
      Q(11) => AXI_BRAM_data_i(48),
      Q(10) => AXI_BRAM_data_i(49),
      Q(9) => AXI_BRAM_data_i(50),
      Q(8) => AXI_BRAM_data_i(51),
      Q(7) => AXI_BRAM_data_i(52),
      Q(6) => AXI_BRAM_data_i(53),
      Q(5) => AXI_BRAM_data_i(56),
      Q(4) => AXI_BRAM_data_i(57),
      Q(3) => AXI_BRAM_data_i(58),
      Q(2) => AXI_BRAM_data_i(59),
      Q(1) => AXI_BRAM_data_i(60),
      Q(0) => AXI_BRAM_data_i(61),
      SR(0) => BRAM_TFT_addr0,
      \gen_vga_if.FDR_B5\(5 downto 0) => BLUE_i(5 downto 0),
      \gen_vga_if.FDR_G5\(5 downto 0) => GREEN_i(5 downto 0),
      \gen_vga_if.FDR_R5\(5 downto 0) => RED_i(5 downto 0),
      m_axi_aclk => m_axi_aclk,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
SLAVE_REG_U6: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_slave_register
     port map (
      Bus_RNW_reg => Bus_RNW_reg,
      Bus_RNW_reg_reg => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg_0,
      Bus_RNW_reg_reg_1 => Bus_RNW_reg_reg_1,
      Bus_RNW_reg_reg_10 => Bus_RNW_reg_reg_10,
      Bus_RNW_reg_reg_2 => Bus_RNW_reg_reg_2,
      Bus_RNW_reg_reg_3 => Bus_RNW_reg_reg_3,
      Bus_RNW_reg_reg_4 => Bus_RNW_reg_reg_4,
      Bus_RNW_reg_reg_5 => Bus_RNW_reg_reg_5,
      Bus_RNW_reg_reg_6 => Bus_RNW_reg_reg_6,
      Bus_RNW_reg_reg_7 => Bus_RNW_reg_reg_7,
      Bus_RNW_reg_reg_8 => Bus_RNW_reg_reg_8,
      Bus_RNW_reg_reg_9 => Bus_RNW_reg_reg_9,
      D(26 downto 0) => D(26 downto 0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(10 downto 0) => \^generate_level_p_s_cdc.multi_bit.for_in_cdc_to[10].cross2_plevel_in2scndry_in_cdc_to\(10 downto 0),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      \IP2Bus_Data_reg[16]_0\(7 downto 0) => \IP2Bus_Data_reg[16]\(7 downto 0),
      \IP2Bus_Data_reg[31]_0\ => \IP2Bus_Data_reg[31]\,
      Q(6 downto 0) => Q(6 downto 0),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_iic_xfer_reg_0 => TFT_iic_xfer_reg,
      bus2ip_rdce_d2 => bus2ip_rdce_d2,
      bus2ip_rdce_d2_reg_0 => bus2ip_rdce_d1,
      bus2ip_rdce_or => bus2ip_rdce_or,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_sreset_reg => bus2ip_sreset_reg,
      bus2ip_sreset_reg_0 => bus2ip_sreset_reg_0,
      bus2ip_wrce(2 downto 0) => bus2ip_wrce(2 downto 0),
      bus2ip_wrce_d2 => bus2ip_wrce_d2,
      bus2ip_wrce_d2_reg_0 => bus2ip_wrce_d1,
      bus2ip_wrce_or => bus2ip_wrce_or,
      cs_ce_clr => cs_ce_clr,
      prmry_in => \^prmry_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_wdata(26 downto 0) => s_axi_wdata(26 downto 0),
      s_axi_wready => s_axi_wready,
      tft_dps => tft_dps,
      tft_status_i => tft_status_i
    );
TFT_IF_U5: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_interface
     port map (
      \BLUE_reg[5]\(5 downto 0) => BLUE_i(5 downto 0),
      C0 => C0,
      DE_i => DE_i,
      \GREEN_reg[5]\(5 downto 0) => GREEN_i(5 downto 0),
      HSYNC_i => HSYNC_i,
      \RED_reg[5]\(5 downto 0) => RED_i(5 downto 0),
      VSYNC_i => VSYNC_i,
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_hsync => tft_hsync,
      tft_rst => tft_rst,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
TFT_ON_MAXI_SYNC: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync_0
     port map (
      FDR_IP2INTC_Irpt => TFT_ON_MAXI_SYNC_n_0,
      SR(0) => TFT_ON_MAXI_SYNC_n_2,
      TFT_on_reg_reg => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      bus2ip_mreset => bus2ip_mreset,
      eof_n => \^eof_n\,
      \line_cnt_reg[8]\(0) => trans_cnt1,
      m_axi_aclk => m_axi_aclk,
      scndry_out => \^scndry_out\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => sig_rd_discontinue,
      trans_cnt_tc => trans_cnt_tc,
      vsync_intr => vsync_intr
    );
TFT_ON_TFT_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized4\
     port map (
      TFT_on_reg_reg => \^generate_level_p_s_cdc.single_bit.cross_plevel_in2scndry_in_cdc_to\,
      scndry_out => tft_on_reg_bram_d2,
      sys_tft_clk => sys_tft_clk
    );
VSYNC_U3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_v_sync
     port map (
      DE_i => DE_i,
      \HSYNC_cs_reg[0]\ => HSYNC_U2_n_5,
      \HSYNC_cs_reg[1]\ => HSYNC_U2_n_3,
      VSYNC_i => VSYNC_i,
      clk_ce_neg0 => clk_ce_neg0,
      clk_ce_pos0 => clk_ce_pos0,
      clk_stb_d1 => clk_stb_d1,
      get_line_start => get_line_start,
      get_line_start_d1_reg => VSYNC_U3_n_4,
      h_pix_cnt_tc => h_pix_cnt_tc,
      p_in_d1_cdc_from => p_in_d1_cdc_from_3,
      p_in_d1_cdc_from_1 => p_in_d1_cdc_from,
      prmry_in_xored => prmry_in_xored_0,
      prmry_in_xored_0 => prmry_in_xored,
      sys_tft_clk => sys_tft_clk,
      vsync_rst => vsync_rst
    );
V_BP_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized2\
     port map (
      E(0) => v_bp_pulse,
      bus2ip_mreset => bus2ip_mreset,
      m_axi_aclk => m_axi_aclk,
      p_in_d1_cdc_from => p_in_d1_cdc_from,
      prmry_in_xored => prmry_in_xored,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst
    );
V_INTR_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized5\
     port map (
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_sreset => bus2ip_sreset,
      m_axi_aclk => m_axi_aclk,
      p_in_d1_cdc_from => p_in_d1_cdc_from_1,
      prmry_in_xored => prmry_in_xored_2,
      s_axi_aclk => s_axi_aclk,
      tft_status_i => tft_status_i
    );
V_P_SYNC: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cdc_sync__parameterized1\
     port map (
      bus2ip_mreset => bus2ip_mreset,
      m_axi_aclk => m_axi_aclk,
      p_in_d1_cdc_from => p_in_d1_cdc_from_3,
      p_in_d1_cdc_from_1 => p_in_d1_cdc_from_1,
      prmry_in_xored => prmry_in_xored_2,
      prmry_in_xored_0 => prmry_in_xored_0,
      sys_tft_clk => sys_tft_clk,
      tft_rst => tft_rst,
      vsync_intr => vsync_intr
    );
axi_rst_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => bus2ip_mreset,
      D => '1',
      Q => axi_rst_d1
    );
axi_rst_d6_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_tft_clk,
      CE => '1',
      CLR => bus2ip_mreset,
      D => axi_rst_d1,
      Q => axi_rst_d6
    );
eof_n_reg: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => bus2ip_mstrd_eof_n,
      Q => \^eof_n\,
      S => TFT_ON_MAXI_SYNC_n_0
    );
get_line_start_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_tft_clk,
      CE => '1',
      D => get_line_start,
      Q => get_line_start_d1,
      R => tft_rst
    );
\line_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAA2AAA"
    )
        port map (
      I0 => trans_cnt_tc_pulse_i,
      I1 => \trans_cnt_reg__0\(3),
      I2 => \trans_cnt_reg__0\(4),
      I3 => \trans_cnt_reg__0\(0),
      I4 => \trans_cnt_reg__0\(2),
      I5 => \trans_cnt_reg__0\(1),
      O => \line_cnt[0]_i_2_n_0\
    );
\line_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BC8CCCCC"
    )
        port map (
      I0 => \line_cnt[0]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \line_cnt[0]_i_5_n_0\,
      I4 => \line_cnt_reg_n_0_[1]\,
      O => line_cnt(0)
    );
\line_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[7]\,
      I2 => \line_cnt_reg_n_0_[8]\,
      I3 => \line_cnt_reg_n_0_[6]\,
      I4 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[0]_i_4_n_0\
    );
\line_cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt_reg_n_0_[8]\,
      I4 => \line_cnt_reg_n_0_[5]\,
      I5 => \line_cnt_reg_n_0_[3]\,
      O => \line_cnt[0]_i_5_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFF100FF00FF00"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[0]\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt[0]_i_4_n_0\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt[0]_i_5_n_0\,
      I5 => \line_cnt_reg_n_0_[2]\,
      O => line_cnt(1)
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F7FFFFF0F70000"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[1]\,
      I1 => \line_cnt_reg_n_0_[0]\,
      I2 => \line_cnt[0]_i_4_n_0\,
      I3 => \line_cnt_reg_n_0_[3]\,
      I4 => \line_cnt_reg_n_0_[2]\,
      I5 => \line_cnt[0]_i_5_n_0\,
      O => line_cnt(2)
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFFFFFF80000000"
    )
        port map (
      I0 => \line_cnt[0]_i_4_n_0\,
      I1 => \line_cnt_reg_n_0_[3]\,
      I2 => \line_cnt_reg_n_0_[2]\,
      I3 => \line_cnt_reg_n_0_[1]\,
      I4 => \line_cnt_reg_n_0_[0]\,
      I5 => \line_cnt[3]_i_2_n_0\,
      O => line_cnt(3)
    );
\line_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[3]\,
      I1 => \line_cnt_reg_n_0_[5]\,
      I2 => \line_cnt_reg_n_0_[8]\,
      I3 => \line_cnt_reg_n_0_[7]\,
      I4 => \line_cnt_reg_n_0_[6]\,
      I5 => \line_cnt_reg_n_0_[4]\,
      O => \line_cnt[3]_i_2_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[4]\,
      I1 => \line_cnt_reg_n_0_[6]\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt_reg_n_0_[8]\,
      I4 => \line_cnt_reg_n_0_[5]\,
      O => line_cnt(4)
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[5]\,
      I1 => \line_cnt_reg_n_0_[8]\,
      I2 => \line_cnt_reg_n_0_[7]\,
      I3 => \line_cnt_reg_n_0_[6]\,
      O => line_cnt(5)
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[6]\,
      I1 => \line_cnt_reg_n_0_[8]\,
      I2 => \line_cnt_reg_n_0_[7]\,
      O => line_cnt(6)
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[8]\,
      I1 => \line_cnt_reg_n_0_[7]\,
      O => line_cnt(7)
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \line_cnt_reg_n_0_[8]\,
      O => line_cnt(8)
    );
\line_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[0]\,
      Q => \sig_cmd_mst_addr_reg[31]\(13),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[1]\,
      Q => \sig_cmd_mst_addr_reg[31]\(12),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[2]\,
      Q => \sig_cmd_mst_addr_reg[31]\(11),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[3]\,
      Q => \sig_cmd_mst_addr_reg[31]\(10),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[4]\,
      Q => \sig_cmd_mst_addr_reg[31]\(9),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[5]\,
      Q => \sig_cmd_mst_addr_reg[31]\(8),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[6]\,
      Q => \sig_cmd_mst_addr_reg[31]\(7),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[7]\,
      Q => \sig_cmd_mst_addr_reg[31]\(6),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \line_cnt_reg_n_0_[8]\,
      Q => \sig_cmd_mst_addr_reg[31]\(5),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(0),
      Q => \line_cnt_reg_n_0_[0]\,
      R => trans_cnt1
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(1),
      Q => \line_cnt_reg_n_0_[1]\,
      R => trans_cnt1
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(2),
      Q => \line_cnt_reg_n_0_[2]\,
      R => trans_cnt1
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(3),
      Q => \line_cnt_reg_n_0_[3]\,
      R => trans_cnt1
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(4),
      Q => \line_cnt_reg_n_0_[4]\,
      R => trans_cnt1
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(5),
      Q => \line_cnt_reg_n_0_[5]\,
      R => trans_cnt1
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(6),
      Q => \line_cnt_reg_n_0_[6]\,
      R => trans_cnt1
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(7),
      Q => \line_cnt_reg_n_0_[7]\,
      R => trans_cnt1
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => \line_cnt[0]_i_2_n_0\,
      D => line_cnt(8),
      Q => \line_cnt_reg_n_0_[8]\,
      R => trans_cnt1
    );
sig_cmd_full_reg_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^ip2bus_mstrd_req\,
      I1 => sig_cmd_empty_reg,
      O => sig_push_cmd_reg
    );
\tft_base_addr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(0),
      Q => \sig_cmd_mst_addr_reg[31]\(24),
      S => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(10),
      Q => \sig_cmd_mst_addr_reg[31]\(14),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(1),
      Q => \sig_cmd_mst_addr_reg[31]\(23),
      S => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(2),
      Q => \sig_cmd_mst_addr_reg[31]\(22),
      S => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(3),
      Q => \sig_cmd_mst_addr_reg[31]\(21),
      S => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(4),
      Q => \sig_cmd_mst_addr_reg[31]\(20),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(5),
      Q => \sig_cmd_mst_addr_reg[31]\(19),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(6),
      Q => \sig_cmd_mst_addr_reg[31]\(18),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(7),
      Q => \sig_cmd_mst_addr_reg[31]\(17),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(8),
      Q => \sig_cmd_mst_addr_reg[31]\(16),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\tft_base_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => v_bp_pulse,
      D => tft_base_addr_d2(9),
      Q => \sig_cmd_mst_addr_reg[31]\(15),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\trans_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \trans_cnt_reg__0\(2),
      I1 => \trans_cnt_reg__0\(3),
      I2 => \trans_cnt_reg__0\(4),
      I3 => \trans_cnt_reg__0\(1),
      I4 => \trans_cnt_reg__0\(0),
      O => \p_0_in__0\(4)
    );
\trans_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \trans_cnt_reg__0\(4),
      I1 => \trans_cnt_reg__0\(3),
      I2 => \trans_cnt_reg__0\(2),
      I3 => \trans_cnt_reg__0\(1),
      O => \p_0_in__0\(3)
    );
\trans_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \trans_cnt_reg__0\(3),
      I1 => \trans_cnt_reg__0\(4),
      I2 => \trans_cnt_reg__0\(2),
      O => \trans_cnt[2]_i_1_n_0\
    );
\trans_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \trans_cnt_reg__0\(4),
      I1 => \trans_cnt_reg__0\(3),
      O => \p_0_in__0\(1)
    );
\trans_cnt[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \trans_cnt_reg__0\(4),
      O => \p_0_in__0\(0)
    );
\trans_cnt_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \trans_cnt_reg__0\(1),
      I1 => \trans_cnt_reg__0\(3),
      I2 => \trans_cnt_reg__0\(4),
      I3 => \trans_cnt_reg__0\(0),
      I4 => \trans_cnt_reg__0\(2),
      O => \trans_cnt_i[0]_i_2_n_0\
    );
\trans_cnt_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(0),
      Q => \sig_cmd_mst_addr_reg[31]\(4),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\trans_cnt_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(1),
      Q => \sig_cmd_mst_addr_reg[31]\(3),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\trans_cnt_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(2),
      Q => \sig_cmd_mst_addr_reg[31]\(2),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\trans_cnt_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(3),
      Q => \sig_cmd_mst_addr_reg[31]\(1),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\trans_cnt_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => mn_request_set,
      D => \trans_cnt_reg__0\(4),
      Q => \sig_cmd_mst_addr_reg[31]\(0),
      R => TFT_ON_MAXI_SYNC_n_0
    );
\trans_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(4),
      Q => \trans_cnt_reg__0\(0),
      R => TFT_ON_MAXI_SYNC_n_2
    );
\trans_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(3),
      Q => \trans_cnt_reg__0\(1),
      R => TFT_ON_MAXI_SYNC_n_2
    );
\trans_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \trans_cnt[2]_i_1_n_0\,
      Q => \trans_cnt_reg__0\(2),
      R => TFT_ON_MAXI_SYNC_n_2
    );
\trans_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(1),
      Q => \trans_cnt_reg__0\(3),
      R => TFT_ON_MAXI_SYNC_n_2
    );
\trans_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => E(0),
      D => \p_0_in__0\(0),
      Q => \trans_cnt_reg__0\(4),
      R => TFT_ON_MAXI_SYNC_n_2
    );
trans_cnt_tc_pulse_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \trans_cnt_reg__0\(1),
      I1 => \trans_cnt_reg__0\(2),
      I2 => \trans_cnt_reg__0\(0),
      I3 => \trans_cnt_reg__0\(4),
      I4 => \trans_cnt_reg__0\(3),
      O => trans_cnt_tc
    );
trans_cnt_tc_pulse_i_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => trans_cnt_tc,
      Q => trans_cnt_tc_pulse_i,
      R => TFT_ON_MAXI_SYNC_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    md_error : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_dvi_clk_p : out STD_LOGIC;
    tft_dvi_clk_n : out STD_LOGIC;
    tft_dvi_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    tft_iic_scl_i : in STD_LOGIC;
    tft_iic_scl_o : out STD_LOGIC;
    tft_iic_scl_t : out STD_LOGIC;
    tft_iic_sda_i : in STD_LOGIC;
    tft_iic_sda_o : out STD_LOGIC;
    tft_iic_sda_t : out STD_LOGIC
  );
  attribute C_DEFAULT_TFT_BASE_ADDR : string;
  attribute C_DEFAULT_TFT_BASE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_EN_I2C_INTF : integer;
  attribute C_EN_I2C_INTF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "artix7";
  attribute C_I2C_SLAVE_ADDR : string;
  attribute C_I2C_SLAVE_ADDR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "8'b01110110";
  attribute C_MAX_BURST_LEN : integer;
  attribute C_MAX_BURST_LEN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 256;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 64;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 3;
  attribute C_TFT_INTERFACE : integer;
  attribute C_TFT_INTERFACE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_10 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_11 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_13 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_18 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_19 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_21 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_22 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_23 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_24 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_25 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_26 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_27 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_28 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_29 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_30 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_31 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_32 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_33 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_34 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_35 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_5 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_6 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_68 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_69 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_7 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_8 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal AXI_MASTER_BURST_I_n_13 : STD_LOGIC;
  signal AXI_MASTER_BURST_I_n_18 : STD_LOGIC;
  signal AXI_MASTER_BURST_I_n_19 : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\ : STD_LOGIC;
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal IP2Bus_MstRd_dst_rdy : STD_LOGIC;
  signal \I_CMD_STATUS_MODULE/sig_cmd_empty_reg\ : STD_LOGIC;
  signal \I_CMD_STATUS_MODULE/sig_push_cmd_reg\ : STD_LOGIC;
  signal \I_RD_LLINK_ADAPTER/sig_rd_discontinue\ : STD_LOGIC;
  signal \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_calc_error_pushed\ : STD_LOGIC;
  signal \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_calc_error_reg0\ : STD_LOGIC;
  signal \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_parent_done\ : STD_LOGIC;
  signal \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\ : signal is "yes";
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_d1\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_d2\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_rdce_or\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_wrce_d1\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_wrce_d2\ : STD_LOGIC;
  signal \SLAVE_REG_U6/bus2ip_wrce_or\ : STD_LOGIC;
  signal TFT_CTRL_I_n_65 : STD_LOGIC;
  signal \TFT_IF_U5/C0\ : STD_LOGIC;
  signal TFT_iic_reg_addr : STD_LOGIC_VECTOR ( 0 to 7 );
  signal TFT_iic_reg_data : STD_LOGIC_VECTOR ( 0 to 6 );
  signal TFT_iic_xfer : STD_LOGIC;
  signal bus2ip_mreset : STD_LOGIC;
  signal bus2ip_mreset_i_1_n_0 : STD_LOGIC;
  signal bus2ip_mst_cmdack : STD_LOGIC;
  signal bus2ip_mst_cmplt : STD_LOGIC;
  signal bus2ip_mstrd_eof_n : STD_LOGIC;
  signal bus2ip_sreset : STD_LOGIC;
  signal bus2ip_wrce : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal eof_n : STD_LOGIC;
  signal ip2bus_mst_addr : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal ip2bus_mst_type : STD_LOGIC;
  signal ip2bus_mstrd_req : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^m_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal p_0_in : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal sig_llink2cmd_rd_busy : STD_LOGIC;
  signal sig_rd2llink_strm_tlast : STD_LOGIC;
  signal sig_rst2rdwr_cntlr_reset : STD_LOGIC;
  signal temp_bus2ip_mstrd_d : STD_LOGIC_VECTOR ( 55 downto 2 );
  signal tft_base_addr_i : STD_LOGIC_VECTOR ( 0 to 10 );
  signal \^tft_dps\ : STD_LOGIC;
  signal tft_intr_en_i : STD_LOGIC;
  signal tft_on_reg : STD_LOGIC;
  signal tft_on_reg_i : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\ : label is "yes";
  attribute KEEP of \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[1]\ : label is "yes";
  attribute KEEP of \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\ : label is "yes";
begin
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \^m_axi_arburst\(0);
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const1>\;
  m_axi_arcache(0) <= \<const1>\;
  m_axi_arlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \^m_axi_arsize\(1);
  m_axi_arsize(0) <= \^m_axi_arsize\(1);
  m_axi_awaddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \^m_axi_arburst\(0);
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const1>\;
  m_axi_awcache(0) <= \<const1>\;
  m_axi_awlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \^m_axi_arsize\(1);
  m_axi_awsize(0) <= \^m_axi_arsize\(1);
  m_axi_awvalid <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \^m_axi_wstrb\(7);
  m_axi_wstrb(6) <= \^m_axi_wstrb\(7);
  m_axi_wstrb(5) <= \^m_axi_wstrb\(7);
  m_axi_wstrb(4) <= \^m_axi_wstrb\(7);
  m_axi_wstrb(3) <= \^m_axi_wstrb\(7);
  m_axi_wstrb(2) <= \^m_axi_wstrb\(7);
  m_axi_wstrb(1) <= \^m_axi_wstrb\(7);
  m_axi_wstrb(0) <= \^m_axi_wstrb\(7);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31 downto 21) <= \^s_axi_rdata\(31 downto 21);
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15 downto 0) <= \^s_axi_rdata\(15 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
  tft_dps <= \^tft_dps\;
  tft_dvi_clk_n <= \<const0>\;
  tft_dvi_clk_p <= \<const0>\;
  tft_dvi_data(11) <= \<const0>\;
  tft_dvi_data(10) <= \<const0>\;
  tft_dvi_data(9) <= \<const0>\;
  tft_dvi_data(8) <= \<const0>\;
  tft_dvi_data(7) <= \<const0>\;
  tft_dvi_data(6) <= \<const0>\;
  tft_dvi_data(5) <= \<const0>\;
  tft_dvi_data(4) <= \<const0>\;
  tft_dvi_data(3) <= \<const0>\;
  tft_dvi_data(2) <= \<const0>\;
  tft_dvi_data(1) <= \<const0>\;
  tft_dvi_data(0) <= \<const0>\;
  tft_iic_scl_o <= \<const0>\;
  tft_iic_scl_t <= \<const1>\;
  tft_iic_sda_o <= \<const0>\;
  tft_iic_sda_t <= \<const1>\;
AXI_LITE_IPIF_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(26) => IP2Bus_Data(0),
      D(25) => IP2Bus_Data(1),
      D(24) => IP2Bus_Data(2),
      D(23) => IP2Bus_Data(3),
      D(22) => IP2Bus_Data(4),
      D(21) => IP2Bus_Data(5),
      D(20) => IP2Bus_Data(6),
      D(19) => IP2Bus_Data(7),
      D(18) => IP2Bus_Data(8),
      D(17) => IP2Bus_Data(9),
      D(16) => IP2Bus_Data(10),
      D(15) => IP2Bus_Data(16),
      D(14) => IP2Bus_Data(17),
      D(13) => IP2Bus_Data(18),
      D(12) => IP2Bus_Data(19),
      D(11) => IP2Bus_Data(20),
      D(10) => IP2Bus_Data(21),
      D(9) => IP2Bus_Data(22),
      D(8) => IP2Bus_Data(23),
      D(7) => IP2Bus_Data(24),
      D(6) => IP2Bus_Data(25),
      D(5) => IP2Bus_Data(26),
      D(4) => IP2Bus_Data(27),
      D(3) => IP2Bus_Data(28),
      D(2) => IP2Bus_Data(29),
      D(1) => IP2Bus_Data(30),
      D(0) => IP2Bus_Data(31),
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \IP2Bus_Data_reg[0]\ => AXI_LITE_IPIF_I_n_32,
      \IP2Bus_Data_reg[10]\ => AXI_LITE_IPIF_I_n_31,
      \IP2Bus_Data_reg[16]\ => AXI_LITE_IPIF_I_n_21,
      \IP2Bus_Data_reg[16]_0\ => AXI_LITE_IPIF_I_n_68,
      \IP2Bus_Data_reg[17]\ => AXI_LITE_IPIF_I_n_20,
      \IP2Bus_Data_reg[18]\ => AXI_LITE_IPIF_I_n_19,
      \IP2Bus_Data_reg[19]\ => AXI_LITE_IPIF_I_n_18,
      \IP2Bus_Data_reg[1]\ => AXI_LITE_IPIF_I_n_22,
      \IP2Bus_Data_reg[1]_0\ => AXI_LITE_IPIF_I_n_69,
      \IP2Bus_Data_reg[20]\ => AXI_LITE_IPIF_I_n_17,
      \IP2Bus_Data_reg[21]\ => AXI_LITE_IPIF_I_n_16,
      \IP2Bus_Data_reg[22]\ => AXI_LITE_IPIF_I_n_15,
      \IP2Bus_Data_reg[23]\ => AXI_LITE_IPIF_I_n_14,
      \IP2Bus_Data_reg[24]\ => AXI_LITE_IPIF_I_n_13,
      \IP2Bus_Data_reg[25]\ => AXI_LITE_IPIF_I_n_12,
      \IP2Bus_Data_reg[26]\ => AXI_LITE_IPIF_I_n_11,
      \IP2Bus_Data_reg[27]\ => AXI_LITE_IPIF_I_n_10,
      \IP2Bus_Data_reg[28]\ => AXI_LITE_IPIF_I_n_33,
      \IP2Bus_Data_reg[29]\ => AXI_LITE_IPIF_I_n_9,
      \IP2Bus_Data_reg[2]\ => AXI_LITE_IPIF_I_n_23,
      \IP2Bus_Data_reg[30]\ => AXI_LITE_IPIF_I_n_34,
      \IP2Bus_Data_reg[31]\ => AXI_LITE_IPIF_I_n_35,
      \IP2Bus_Data_reg[3]\ => AXI_LITE_IPIF_I_n_24,
      \IP2Bus_Data_reg[4]\ => AXI_LITE_IPIF_I_n_25,
      \IP2Bus_Data_reg[5]\ => AXI_LITE_IPIF_I_n_26,
      \IP2Bus_Data_reg[6]\ => AXI_LITE_IPIF_I_n_27,
      \IP2Bus_Data_reg[7]\ => AXI_LITE_IPIF_I_n_28,
      \IP2Bus_Data_reg[8]\ => AXI_LITE_IPIF_I_n_29,
      \IP2Bus_Data_reg[9]\ => AXI_LITE_IPIF_I_n_30,
      Q(6) => TFT_iic_reg_data(0),
      Q(5) => TFT_iic_reg_data(1),
      Q(4) => TFT_iic_reg_data(2),
      Q(3) => TFT_iic_reg_data(3),
      Q(2) => TFT_iic_reg_data(4),
      Q(1) => TFT_iic_reg_data(5),
      Q(0) => TFT_iic_reg_data(6),
      \TFT_base_addr_reg[0]\(10) => tft_base_addr_i(0),
      \TFT_base_addr_reg[0]\(9) => tft_base_addr_i(1),
      \TFT_base_addr_reg[0]\(8) => tft_base_addr_i(2),
      \TFT_base_addr_reg[0]\(7) => tft_base_addr_i(3),
      \TFT_base_addr_reg[0]\(6) => tft_base_addr_i(4),
      \TFT_base_addr_reg[0]\(5) => tft_base_addr_i(5),
      \TFT_base_addr_reg[0]\(4) => tft_base_addr_i(6),
      \TFT_base_addr_reg[0]\(3) => tft_base_addr_i(7),
      \TFT_base_addr_reg[0]\(2) => tft_base_addr_i(8),
      \TFT_base_addr_reg[0]\(1) => tft_base_addr_i(9),
      \TFT_base_addr_reg[0]\(0) => tft_base_addr_i(10),
      TFT_dps_reg_reg => AXI_LITE_IPIF_I_n_7,
      \TFT_iic_reg_addr_reg[0]\(7) => TFT_iic_reg_addr(0),
      \TFT_iic_reg_addr_reg[0]\(6) => TFT_iic_reg_addr(1),
      \TFT_iic_reg_addr_reg[0]\(5) => TFT_iic_reg_addr(2),
      \TFT_iic_reg_addr_reg[0]\(4) => TFT_iic_reg_addr(3),
      \TFT_iic_reg_addr_reg[0]\(3) => TFT_iic_reg_addr(4),
      \TFT_iic_reg_addr_reg[0]\(2) => TFT_iic_reg_addr(5),
      \TFT_iic_reg_addr_reg[0]\(1) => TFT_iic_reg_addr(6),
      \TFT_iic_reg_addr_reg[0]\(0) => TFT_iic_reg_addr(7),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_iic_xfer_reg => AXI_LITE_IPIF_I_n_5,
      TFT_intr_en_reg => AXI_LITE_IPIF_I_n_6,
      TFT_on_reg_reg => AXI_LITE_IPIF_I_n_8,
      TFT_on_reg_reg_0 => tft_on_reg_i,
      TFT_on_reg_reg_1 => TFT_CTRL_I_n_65,
      bus2ip_rdce_d1 => \SLAVE_REG_U6/bus2ip_rdce_d1\,
      bus2ip_rdce_d2 => \SLAVE_REG_U6/bus2ip_rdce_d2\,
      bus2ip_rdce_or => \SLAVE_REG_U6/bus2ip_rdce_or\,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_wrce(2) => bus2ip_wrce(3),
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      bus2ip_wrce_d1 => \SLAVE_REG_U6/bus2ip_wrce_d1\,
      bus2ip_wrce_d2 => \SLAVE_REG_U6/bus2ip_wrce_d2\,
      bus2ip_wrce_or => \SLAVE_REG_U6/bus2ip_wrce_or\,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      prmry_in => tft_intr_en_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_arready => \^s_axi_arready\,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(26 downto 16) => \^s_axi_rdata\(31 downto 21),
      s_axi_rdata(15 downto 0) => \^s_axi_rdata\(15 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(3) => s_axi_wdata(31),
      s_axi_wdata(2) => s_axi_wdata(3),
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      tft_dps => \^tft_dps\
    );
AXI_MASTER_BURST_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master_burst
     port map (
      AXI_BRAM_we_i_reg => AXI_MASTER_BURST_I_n_18,
      D(0) => AXI_MASTER_BURST_I_n_13,
      E(0) => AXI_MASTER_BURST_I_n_19,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\(2 downto 0) => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(2 downto 0),
      Q(35 downto 30) => temp_bus2ip_mstrd_d(55 downto 50),
      Q(29 downto 24) => temp_bus2ip_mstrd_d(47 downto 42),
      Q(23 downto 18) => temp_bus2ip_mstrd_d(39 downto 34),
      Q(17 downto 12) => temp_bus2ip_mstrd_d(23 downto 18),
      Q(11 downto 6) => temp_bus2ip_mstrd_d(15 downto 10),
      Q(5 downto 0) => temp_bus2ip_mstrd_d(7 downto 2),
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      eof_n => eof_n,
      ip2bus_mst_type => ip2bus_mst_type,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => \^m_axi_araddr\(31 downto 0),
      m_axi_arburst(0) => \^m_axi_arburst\(0),
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arlen(7 downto 0) => \^m_axi_arlen\(7 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(0) => \^m_axi_arsize\(1),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(35 downto 30) => m_axi_rdata(55 downto 50),
      m_axi_rdata(29 downto 24) => m_axi_rdata(47 downto 42),
      m_axi_rdata(23 downto 18) => m_axi_rdata(39 downto 34),
      m_axi_rdata(17 downto 12) => m_axi_rdata(23 downto 18),
      m_axi_rdata(11 downto 6) => m_axi_rdata(15 downto 10),
      m_axi_rdata(5 downto 0) => m_axi_rdata(7 downto 2),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(0) => \^m_axi_wstrb\(7),
      m_axi_wvalid => m_axi_wvalid,
      md_error => md_error,
      \out\ => sig_rst2rdwr_cntlr_reset,
      scndry_out => tft_on_reg,
      sig_calc_error_pushed => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_calc_error_pushed\,
      sig_calc_error_reg0 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_calc_error_reg0\,
      sig_cmd_empty_reg => \I_CMD_STATUS_MODULE/sig_cmd_empty_reg\,
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_parent_done => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_parent_done\,
      sig_push_cmd_reg => \I_CMD_STATUS_MODULE/sig_push_cmd_reg\,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => \I_RD_LLINK_ADAPTER/sig_rd_discontinue\,
      \tft_base_addr_reg[0]\(24 downto 0) => ip2bus_mst_addr(31 downto 7)
    );
FDS_HSYNC_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_tft_clk,
      O => \TFT_IF_U5/C0\
    );
\FSM_sequential_sig_pcc_sm_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A1A5A4A4A0A4A"
    )
        port map (
      I0 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(1),
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(2),
      I2 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(0),
      I3 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_parent_done\,
      I4 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_calc_error_pushed\,
      I5 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_calc_error_reg0\,
      O => \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\
    );
\FSM_sequential_sig_pcc_sm_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3C8C"
    )
        port map (
      I0 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_calc_error_pushed\,
      I1 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(2),
      I2 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(0),
      I3 => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(1),
      O => \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => AXI_MASTER_BURST_I_n_13,
      Q => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(0),
      R => sig_rst2rdwr_cntlr_reset
    );
\I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[1]_i_1_n_0\,
      Q => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(1),
      R => sig_rst2rdwr_cntlr_reset
    );
\I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/FSM_sequential_sig_pcc_sm_state_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => \FSM_sequential_sig_pcc_sm_state[2]_i_1_n_0\,
      Q => \I_RD_WR_CNTRL_MODULE/I_MSTR_PCC/sig_pcc_sm_state\(2),
      R => sig_rst2rdwr_cntlr_reset
    );
TFT_CTRL_I: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft_v2_0_15_tft_controller
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_5,
      Bus_RNW_reg_reg_0 => AXI_LITE_IPIF_I_n_22,
      Bus_RNW_reg_reg_1 => AXI_LITE_IPIF_I_n_23,
      Bus_RNW_reg_reg_10 => AXI_LITE_IPIF_I_n_34,
      Bus_RNW_reg_reg_2 => AXI_LITE_IPIF_I_n_24,
      Bus_RNW_reg_reg_3 => AXI_LITE_IPIF_I_n_25,
      Bus_RNW_reg_reg_4 => AXI_LITE_IPIF_I_n_26,
      Bus_RNW_reg_reg_5 => AXI_LITE_IPIF_I_n_27,
      Bus_RNW_reg_reg_6 => AXI_LITE_IPIF_I_n_28,
      Bus_RNW_reg_reg_7 => AXI_LITE_IPIF_I_n_29,
      Bus_RNW_reg_reg_8 => AXI_LITE_IPIF_I_n_30,
      Bus_RNW_reg_reg_9 => AXI_LITE_IPIF_I_n_31,
      C0 => \TFT_IF_U5/C0\,
      D(26) => IP2Bus_Data(0),
      D(25) => IP2Bus_Data(1),
      D(24) => IP2Bus_Data(2),
      D(23) => IP2Bus_Data(3),
      D(22) => IP2Bus_Data(4),
      D(21) => IP2Bus_Data(5),
      D(20) => IP2Bus_Data(6),
      D(19) => IP2Bus_Data(7),
      D(18) => IP2Bus_Data(8),
      D(17) => IP2Bus_Data(9),
      D(16) => IP2Bus_Data(10),
      D(15) => IP2Bus_Data(16),
      D(14) => IP2Bus_Data(17),
      D(13) => IP2Bus_Data(18),
      D(12) => IP2Bus_Data(19),
      D(11) => IP2Bus_Data(20),
      D(10) => IP2Bus_Data(21),
      D(9) => IP2Bus_Data(22),
      D(8) => IP2Bus_Data(23),
      D(7) => IP2Bus_Data(24),
      D(6) => IP2Bus_Data(25),
      D(5) => IP2Bus_Data(26),
      D(4) => IP2Bus_Data(27),
      D(3) => IP2Bus_Data(28),
      D(2) => IP2Bus_Data(29),
      D(1) => IP2Bus_Data(30),
      D(0) => IP2Bus_Data(31),
      E(0) => AXI_MASTER_BURST_I_n_19,
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(10) => tft_base_addr_i(0),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(9) => tft_base_addr_i(1),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(8) => tft_base_addr_i(2),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(7) => tft_base_addr_i(3),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(6) => tft_base_addr_i(4),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(5) => tft_base_addr_i(5),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(4) => tft_base_addr_i(6),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(3) => tft_base_addr_i(7),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(2) => tft_base_addr_i(8),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(1) => tft_base_addr_i(9),
      \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[10].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\(0) => tft_base_addr_i(10),
      \GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to\ => tft_on_reg_i,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\ => AXI_LITE_IPIF_I_n_68,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_0\ => AXI_LITE_IPIF_I_n_21,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_1\ => AXI_LITE_IPIF_I_n_20,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_10\ => AXI_LITE_IPIF_I_n_11,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_11\ => AXI_LITE_IPIF_I_n_10,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_12\ => AXI_LITE_IPIF_I_n_9,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_13\ => AXI_LITE_IPIF_I_n_8,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_14\ => AXI_LITE_IPIF_I_n_7,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_2\ => AXI_LITE_IPIF_I_n_19,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_3\ => AXI_LITE_IPIF_I_n_18,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_4\ => AXI_LITE_IPIF_I_n_17,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_5\ => AXI_LITE_IPIF_I_n_16,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_6\ => AXI_LITE_IPIF_I_n_15,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_7\ => AXI_LITE_IPIF_I_n_14,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_8\ => AXI_LITE_IPIF_I_n_13,
      \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]_9\ => AXI_LITE_IPIF_I_n_12,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ => \I_SLAVE_ATTACHMENT/I_DECODER/GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => AXI_LITE_IPIF_I_n_6,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => AXI_LITE_IPIF_I_n_33,
      \IP2Bus_Data_reg[16]\(7) => TFT_iic_reg_addr(0),
      \IP2Bus_Data_reg[16]\(6) => TFT_iic_reg_addr(1),
      \IP2Bus_Data_reg[16]\(5) => TFT_iic_reg_addr(2),
      \IP2Bus_Data_reg[16]\(4) => TFT_iic_reg_addr(3),
      \IP2Bus_Data_reg[16]\(3) => TFT_iic_reg_addr(4),
      \IP2Bus_Data_reg[16]\(2) => TFT_iic_reg_addr(5),
      \IP2Bus_Data_reg[16]\(1) => TFT_iic_reg_addr(6),
      \IP2Bus_Data_reg[16]\(0) => TFT_iic_reg_addr(7),
      \IP2Bus_Data_reg[31]\ => TFT_CTRL_I_n_65,
      IP2Bus_MstRd_dst_rdy => IP2Bus_MstRd_dst_rdy,
      Q(6) => TFT_iic_reg_data(0),
      Q(5) => TFT_iic_reg_data(1),
      Q(4) => TFT_iic_reg_data(2),
      Q(3) => TFT_iic_reg_data(3),
      Q(2) => TFT_iic_reg_data(4),
      Q(1) => TFT_iic_reg_data(5),
      Q(0) => TFT_iic_reg_data(6),
      TFT_iic_xfer => TFT_iic_xfer,
      TFT_iic_xfer_reg => AXI_LITE_IPIF_I_n_32,
      bus2ip_mreset => bus2ip_mreset,
      bus2ip_mst_cmdack => bus2ip_mst_cmdack,
      bus2ip_mst_cmplt => bus2ip_mst_cmplt,
      bus2ip_mstrd_eof_n => bus2ip_mstrd_eof_n,
      bus2ip_rdce_d1 => \SLAVE_REG_U6/bus2ip_rdce_d1\,
      bus2ip_rdce_d2 => \SLAVE_REG_U6/bus2ip_rdce_d2\,
      bus2ip_rdce_or => \SLAVE_REG_U6/bus2ip_rdce_or\,
      bus2ip_sreset => bus2ip_sreset,
      bus2ip_sreset_reg => AXI_LITE_IPIF_I_n_69,
      bus2ip_sreset_reg_0 => AXI_LITE_IPIF_I_n_35,
      bus2ip_wrce(2) => bus2ip_wrce(3),
      bus2ip_wrce(1 downto 0) => bus2ip_wrce(1 downto 0),
      bus2ip_wrce_d1 => \SLAVE_REG_U6/bus2ip_wrce_d1\,
      bus2ip_wrce_d2 => \SLAVE_REG_U6/bus2ip_wrce_d2\,
      bus2ip_wrce_or => \SLAVE_REG_U6/bus2ip_wrce_or\,
      cs_ce_clr => \I_SLAVE_ATTACHMENT/I_DECODER/cs_ce_clr\,
      eof_n => eof_n,
      ip2bus_mst_type => ip2bus_mst_type,
      ip2bus_mstrd_req => ip2bus_mstrd_req,
      ip2intc_irpt => ip2intc_irpt,
      m_axi_aclk => m_axi_aclk,
      prmry_in => tft_intr_en_i,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => \^s_axi_arready\,
      s_axi_wdata(26 downto 16) => s_axi_wdata(31 downto 21),
      s_axi_wdata(15 downto 0) => s_axi_wdata(15 downto 0),
      s_axi_wready => \^s_axi_wready\,
      scndry_out => tft_on_reg,
      sig_cmd_empty_reg => \I_CMD_STATUS_MODULE/sig_cmd_empty_reg\,
      \sig_cmd_mst_addr_reg[31]\(24 downto 0) => ip2bus_mst_addr(31 downto 7),
      \sig_data_reg_out_reg[23]\(35 downto 30) => temp_bus2ip_mstrd_d(23 downto 18),
      \sig_data_reg_out_reg[23]\(29 downto 24) => temp_bus2ip_mstrd_d(15 downto 10),
      \sig_data_reg_out_reg[23]\(23 downto 18) => temp_bus2ip_mstrd_d(7 downto 2),
      \sig_data_reg_out_reg[23]\(17 downto 12) => temp_bus2ip_mstrd_d(55 downto 50),
      \sig_data_reg_out_reg[23]\(11 downto 6) => temp_bus2ip_mstrd_d(47 downto 42),
      \sig_data_reg_out_reg[23]\(5 downto 0) => temp_bus2ip_mstrd_d(39 downto 34),
      sig_llink2cmd_rd_busy => sig_llink2cmd_rd_busy,
      sig_m_valid_out_reg => AXI_MASTER_BURST_I_n_18,
      sig_push_cmd_reg => \I_CMD_STATUS_MODULE/sig_push_cmd_reg\,
      sig_rd2llink_strm_tlast => sig_rd2llink_strm_tlast,
      sig_rd_discontinue => \I_RD_LLINK_ADAPTER/sig_rd_discontinue\,
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_dps => \^tft_dps\,
      tft_hsync => tft_hsync,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
bus2ip_mreset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => m_axi_aresetn,
      O => bus2ip_mreset_i_1_n_0
    );
bus2ip_mreset_reg: unisim.vcomponents.FDRE
     port map (
      C => m_axi_aclk,
      CE => '1',
      D => bus2ip_mreset_i_1_n_0,
      Q => bus2ip_mreset,
      R => '0'
    );
bus2ip_sreset_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in
    );
bus2ip_sreset_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_in,
      Q => bus2ip_sreset,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m_axi_aclk : in STD_LOGIC;
    m_axi_aresetn : in STD_LOGIC;
    md_error : out STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wready : in STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sys_tft_clk : in STD_LOGIC;
    tft_hsync : out STD_LOGIC;
    tft_vsync : out STD_LOGIC;
    tft_de : out STD_LOGIC;
    tft_dps : out STD_LOGIC;
    tft_vga_clk : out STD_LOGIC;
    tft_vga_r : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    tft_vga_b : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_axi_tft_0_0,axi_tft,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "axi_tft,Vivado 2016.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_tft_dvi_clk_n_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_dvi_clk_p_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_scl_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_scl_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_sda_o_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_iic_sda_t_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_tft_dvi_data_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute C_DEFAULT_TFT_BASE_ADDR : string;
  attribute C_DEFAULT_TFT_BASE_ADDR of U0 : label is "64'b0000000000000000000000000000000011110000000000000000000000000000";
  attribute C_EN_I2C_INTF : integer;
  attribute C_EN_I2C_INTF of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_I2C_SLAVE_ADDR : string;
  attribute C_I2C_SLAVE_ADDR of U0 : label is "8'b01110110";
  attribute C_MAX_BURST_LEN : integer;
  attribute C_MAX_BURST_LEN of U0 : label is 256;
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_M_AXI_DATA_WIDTH : integer;
  attribute C_M_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 3;
  attribute C_TFT_INTERFACE : integer;
  attribute C_TFT_INTERFACE of U0 : label is 0;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_tft
     port map (
      ip2intc_irpt => ip2intc_irpt,
      m_axi_aclk => m_axi_aclk,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_aresetn => m_axi_aresetn,
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wvalid => m_axi_wvalid,
      md_error => md_error,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(3 downto 0) => s_axi_araddr(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(3 downto 0) => s_axi_awaddr(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      sys_tft_clk => sys_tft_clk,
      tft_de => tft_de,
      tft_dps => tft_dps,
      tft_dvi_clk_n => NLW_U0_tft_dvi_clk_n_UNCONNECTED,
      tft_dvi_clk_p => NLW_U0_tft_dvi_clk_p_UNCONNECTED,
      tft_dvi_data(11 downto 0) => NLW_U0_tft_dvi_data_UNCONNECTED(11 downto 0),
      tft_hsync => tft_hsync,
      tft_iic_scl_i => '0',
      tft_iic_scl_o => NLW_U0_tft_iic_scl_o_UNCONNECTED,
      tft_iic_scl_t => NLW_U0_tft_iic_scl_t_UNCONNECTED,
      tft_iic_sda_i => '0',
      tft_iic_sda_o => NLW_U0_tft_iic_sda_o_UNCONNECTED,
      tft_iic_sda_t => NLW_U0_tft_iic_sda_t_UNCONNECTED,
      tft_vga_b(5 downto 0) => tft_vga_b(5 downto 0),
      tft_vga_clk => tft_vga_clk,
      tft_vga_g(5 downto 0) => tft_vga_g(5 downto 0),
      tft_vga_r(5 downto 0) => tft_vga_r(5 downto 0),
      tft_vsync => tft_vsync
    );
end STRUCTURE;
