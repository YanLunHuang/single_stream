-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity myproject is
port (
    input_1_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
    layer2_out_V_V_TDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
    const_size_in_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    const_size_out_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    const_size_in_1_ap_vld : OUT STD_LOGIC;
    const_size_out_1_ap_vld : OUT STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    input_1_V_V_TVALID : IN STD_LOGIC;
    input_1_V_V_TREADY : OUT STD_LOGIC;
    layer2_out_V_V_TVALID : OUT STD_LOGIC;
    layer2_out_V_V_TREADY : IN STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of myproject is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "myproject,hls_ip_2019_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xczu9eg-ffvb1156-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.893000,HLS_SYN_LAT=24564,HLS_SYN_TPT=24052,HLS_SYN_MEM=684,HLS_SYN_DSP=512,HLS_SYN_FF=124980,HLS_SYN_LUT=58704,HLS_VERSION=2019_2}";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal ap_rst_n_inv : STD_LOGIC;
    signal Block_proc_U0_ap_start : STD_LOGIC;
    signal Block_proc_U0_ap_done : STD_LOGIC;
    signal Block_proc_U0_ap_continue : STD_LOGIC;
    signal Block_proc_U0_ap_idle : STD_LOGIC;
    signal Block_proc_U0_ap_ready : STD_LOGIC;
    signal Block_proc_U0_const_size_in_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal Block_proc_U0_const_size_in_1_ap_vld : STD_LOGIC;
    signal Block_proc_U0_const_size_out_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal Block_proc_U0_const_size_out_1_ap_vld : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_start : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_done : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_continue : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_idle : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_start_out : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_start_write : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_data_V_V_TREADY : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_res_V_V_din : STD_LOGIC_VECTOR (15 downto 0);
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_res_V_V_write : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_start : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_done : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_continue : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_idle : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_ready : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_data_V_V_read : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_res_V_V_TDATA : STD_LOGIC_VECTOR (15 downto 0);
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_res_V_V_TVALID : STD_LOGIC;
    signal layer4_out_V_V_full_n : STD_LOGIC;
    signal layer4_out_V_V_dout : STD_LOGIC_VECTOR (15 downto 0);
    signal layer4_out_V_V_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_Block_proc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_Block_proc_U0_ap_ready : STD_LOGIC;
    signal Block_proc_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal ap_sync_reg_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready : STD_LOGIC;
    signal zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready_count : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal Block_proc_U0_start_full_n : STD_LOGIC;
    signal Block_proc_U0_start_write : STD_LOGIC;
    signal start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_full_n : STD_LOGIC;
    signal start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_empty_n : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_start_full_n : STD_LOGIC;
    signal conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_start_write : STD_LOGIC;

    component Block_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        const_size_in_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
        const_size_in_1_ap_vld : OUT STD_LOGIC;
        const_size_out_1 : OUT STD_LOGIC_VECTOR (15 downto 0);
        const_size_out_1_ap_vld : OUT STD_LOGIC );
    end component;


    component zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        data_V_V_TDATA : IN STD_LOGIC_VECTOR (15 downto 0);
        data_V_V_TVALID : IN STD_LOGIC;
        data_V_V_TREADY : OUT STD_LOGIC;
        res_V_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
        res_V_V_full_n : IN STD_LOGIC;
        res_V_V_write : OUT STD_LOGIC );
    end component;


    component conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        data_V_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
        data_V_V_empty_n : IN STD_LOGIC;
        data_V_V_read : OUT STD_LOGIC;
        res_V_V_TDATA : OUT STD_LOGIC_VECTOR (15 downto 0);
        res_V_V_TVALID : OUT STD_LOGIC;
        res_V_V_TREADY : IN STD_LOGIC );
    end component;


    component fifo_w16_d25_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (15 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_conirb IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    Block_proc_U0 : component Block_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => Block_proc_U0_ap_start,
        ap_done => Block_proc_U0_ap_done,
        ap_continue => Block_proc_U0_ap_continue,
        ap_idle => Block_proc_U0_ap_idle,
        ap_ready => Block_proc_U0_ap_ready,
        const_size_in_1 => Block_proc_U0_const_size_in_1,
        const_size_in_1_ap_vld => Block_proc_U0_const_size_in_1_ap_vld,
        const_size_out_1 => Block_proc_U0_const_size_out_1,
        const_size_out_1_ap_vld => Block_proc_U0_const_size_out_1_ap_vld);

    zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0 : component zeropad2d_cl_me_ap_fixed_ap_fixed_config4_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_start,
        start_full_n => start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_full_n,
        ap_done => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_done,
        ap_continue => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_continue,
        ap_idle => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_idle,
        ap_ready => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready,
        start_out => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_start_out,
        start_write => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_start_write,
        data_V_V_TDATA => input_1_V_V_TDATA,
        data_V_V_TVALID => input_1_V_V_TVALID,
        data_V_V_TREADY => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_data_V_V_TREADY,
        res_V_V_din => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_res_V_V_din,
        res_V_V_full_n => layer4_out_V_V_full_n,
        res_V_V_write => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_res_V_V_write);

    conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0 : component conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_s
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_start,
        ap_done => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_done,
        ap_continue => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_continue,
        ap_idle => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_idle,
        ap_ready => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_ready,
        data_V_V_dout => layer4_out_V_V_dout,
        data_V_V_empty_n => layer4_out_V_V_empty_n,
        data_V_V_read => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_data_V_V_read,
        res_V_V_TDATA => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_res_V_V_TDATA,
        res_V_V_TVALID => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_res_V_V_TVALID,
        res_V_V_TREADY => layer2_out_V_V_TREADY);

    layer4_out_V_V_U : component fifo_w16_d25_A
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_res_V_V_din,
        if_full_n => layer4_out_V_V_full_n,
        if_write => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_res_V_V_write,
        if_dout => layer4_out_V_V_dout,
        if_empty_n => layer4_out_V_V_empty_n,
        if_read => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_data_V_V_read);

    start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_conirb_U : component start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_conirb
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_din,
        if_full_n => start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_full_n,
        if_write => zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_start_write,
        if_dout => start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_dout,
        if_empty_n => start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_empty_n,
        if_read => conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_ready);





    ap_sync_reg_Block_proc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_Block_proc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_Block_proc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_Block_proc_U0_ap_ready <= ap_sync_Block_proc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_sync_reg_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready <= ap_sync_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    Block_proc_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_sync_ready = ap_const_logic_1) and (ap_const_logic_0 = Block_proc_U0_ap_ready))) then 
                Block_proc_U0_ap_ready_count <= std_logic_vector(unsigned(Block_proc_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (ap_const_logic_1 = Block_proc_U0_ap_ready))) then 
                Block_proc_U0_ap_ready_count <= std_logic_vector(unsigned(Block_proc_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;

    zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready_count_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready = ap_const_logic_0) and (ap_sync_ready = ap_const_logic_1))) then 
                zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready_count <= std_logic_vector(unsigned(zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready_count) - unsigned(ap_const_lv2_1));
            elsif (((ap_sync_ready = ap_const_logic_0) and (zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready = ap_const_logic_1))) then 
                zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready_count <= std_logic_vector(unsigned(zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready_count) + unsigned(ap_const_lv2_1));
            end if; 
        end if;
    end process;
    Block_proc_U0_ap_continue <= ap_sync_done;
    Block_proc_U0_ap_start <= ((ap_sync_reg_Block_proc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    Block_proc_U0_start_full_n <= ap_const_logic_1;
    Block_proc_U0_start_write <= ap_const_logic_0;
    ap_done <= ap_sync_done;
    ap_idle <= (zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_idle and conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_idle and Block_proc_U0_ap_idle);
    ap_ready <= ap_sync_ready;

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    ap_sync_Block_proc_U0_ap_ready <= (ap_sync_reg_Block_proc_U0_ap_ready or Block_proc_U0_ap_ready);
    ap_sync_continue <= ap_sync_done;
    ap_sync_done <= (conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_done and Block_proc_U0_ap_done);
    ap_sync_ready <= (ap_sync_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready and ap_sync_Block_proc_U0_ap_ready);
    ap_sync_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready <= (zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready or ap_sync_reg_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready);
    const_size_in_1 <= Block_proc_U0_const_size_in_1;
    const_size_in_1_ap_vld <= Block_proc_U0_const_size_in_1_ap_vld;
    const_size_out_1 <= Block_proc_U0_const_size_out_1;
    const_size_out_1_ap_vld <= Block_proc_U0_const_size_out_1_ap_vld;
    conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_continue <= ap_sync_done;
    conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_ap_start <= start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_empty_n;
    conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_start_full_n <= ap_const_logic_1;
    conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_start_write <= ap_const_logic_0;
    input_1_V_V_TREADY <= zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_data_V_V_TREADY;
    layer2_out_V_V_TDATA <= conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_res_V_V_TDATA;
    layer2_out_V_V_TVALID <= conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_res_V_V_TVALID;
    start_for_conv_2d_cl_me_ap_fixed_ap_fixed_16_14_5_3_0_config2_U0_din <= (0=>ap_const_logic_1, others=>'-');
    zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_continue <= ap_const_logic_1;
    zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_start <= ((ap_sync_reg_zeropad2d_cl_me_ap_fixed_ap_fixed_config4_U0_ap_ready xor ap_const_logic_1) and ap_start);
end behav;
