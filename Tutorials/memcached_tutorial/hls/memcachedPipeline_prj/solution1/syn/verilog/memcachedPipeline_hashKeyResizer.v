// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module memcachedPipeline_hashKeyResizer (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        in2hash_V_dout,
        in2hash_V_empty_n,
        in2hash_V_read,
        in2hashKeyLength_V_V_dout,
        in2hashKeyLength_V_V_empty_n,
        in2hashKeyLength_V_V_read,
        resizedKey_V_V_din,
        resizedKey_V_V_full_n,
        resizedKey_V_V_write,
        resizedKeyLength_V_din,
        resizedKeyLength_V_full_n,
        resizedKeyLength_V_write,
        resizedInitValue_V_din,
        resizedInitValue_V_full_n,
        resizedInitValue_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm0_0 = 1'b1;
parameter    ap_ST_st2_fsm1_1 = 2'b10;
parameter    ap_ST_st0_fsm1_0 = 2'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv3_2 = 3'b10;
parameter    ap_const_lv3_1 = 3'b1;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv3_7 = 3'b111;
parameter    ap_const_lv3_6 = 3'b110;
parameter    ap_const_lv3_5 = 3'b101;
parameter    ap_const_lv3_3 = 3'b11;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv128_lc_1 = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv96_0 = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_D = 32'b1101;
parameter    ap_const_lv32_81 = 32'b10000001;
parameter    ap_const_lv8_F0 = 8'b11110000;
parameter    ap_const_lv32_20 = 32'b100000;
parameter    ap_const_lv32_7F = 32'b1111111;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_60 = 32'b1100000;
parameter    ap_const_lv8_C = 8'b1100;
parameter    ap_const_lv8_4 = 8'b100;
parameter    ap_const_lv8_8 = 8'b1000;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv32_1F = 32'b11111;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [129:0] in2hash_V_dout;
input   in2hash_V_empty_n;
output   in2hash_V_read;
input  [7:0] in2hashKeyLength_V_V_dout;
input   in2hashKeyLength_V_V_empty_n;
output   in2hashKeyLength_V_V_read;
output  [95:0] resizedKey_V_V_din;
input   resizedKey_V_V_full_n;
output   resizedKey_V_V_write;
output  [31:0] resizedKeyLength_V_din;
input   resizedKeyLength_V_full_n;
output   resizedKeyLength_V_write;
output  [31:0] resizedInitValue_V_din;
input   resizedInitValue_V_full_n;
output   resizedInitValue_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg in2hash_V_read;
reg in2hashKeyLength_V_V_read;
reg[95:0] resizedKey_V_V_din;
reg resizedKey_V_V_write;
reg resizedKeyLength_V_write;
reg resizedInitValue_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm0 = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm0_0;
reg    ap_sig_bdd_23;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm1 = 2'b1;
reg    ap_sig_cseq_ST_st0_fsm1_0;
reg    ap_sig_bdd_34;
wire   [2:0] keyResizerState_load_load_fu_254_p1;
wire   [0:0] grp_nbreadreq_fu_130_p3;
wire   [0:0] tmp_nbreadreq_fu_144_p3;
reg    ap_sig_bdd_82;
reg   [2:0] keyResizerState_load_reg_513 = 3'b000;
reg   [0:0] tmp_65_reg_524 = 1'b0;
reg   [0:0] tmp_64_reg_538 = 1'b0;
reg   [0:0] tmp_63_reg_547 = 1'b0;
reg   [0:0] tmp_reg_556 = 1'b0;
reg   [0:0] tmp_66_reg_560 = 1'b0;
reg    ap_sig_bdd_156;
reg    ap_sig_cseq_ST_st2_fsm1_1;
reg    ap_sig_bdd_162;
reg   [2:0] keyResizerState = 3'b000;
reg   [7:0] keyResizerLength_V = 8'b00000000;
reg   [127:0] tempInput_data_V = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
reg   [95:0] resizedKeyOutput_V = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
reg   [127:0] p_Val2_s_reg_517 = 128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire   [95:0] tmp_V_95_fu_277_p1;
reg   [95:0] tmp_V_95_reg_528 = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire   [0:0] tmp_290_fu_281_p2;
wire   [31:0] tmp_390_fu_329_p1;
reg   [31:0] tmp_390_reg_542 = 32'b00000000000000000000000000000000;
wire   [63:0] tmp_387_fu_371_p1;
reg   [63:0] tmp_387_reg_551 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
reg   [7:0] tmp_V_96_reg_564 = 8'b00000000;
wire   [95:0] tmp_V_97_fu_419_p1;
reg   [95:0] tmp_V_97_reg_569 = 96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
wire   [0:0] tmp_291_fu_423_p2;
wire   [95:0] p_Result_61_fu_433_p5;
wire   [95:0] p_Result_60_fu_452_p5;
wire   [95:0] p_Result_59_fu_476_p3;
wire   [95:0] p_Result_s_fu_490_p3;
wire   [2:0] grp_fu_195_p3;
wire   [2:0] storemerge5_fu_305_p3;
wire   [2:0] storemerge9_fu_347_p3;
wire   [2:0] storemerge7_fu_389_p3;
wire   [7:0] tmp_s_fu_287_p2;
wire   [7:0] grp_fu_209_p2;
wire   [127:0] p_Val2_43_fu_267_p1;
wire   [127:0] p_Val2_42_fu_319_p1;
wire   [127:0] p_Val2_41_fu_361_p1;
wire   [127:0] p_Val2_44_fu_409_p1;
wire   [0:0] grp_fu_187_p3;
wire   [0:0] tmp_285_fu_299_p2;
wire   [0:0] tmp_289_fu_333_p2;
wire   [2:0] storemerge8_fu_339_p3;
wire   [0:0] tmp_287_fu_375_p2;
wire   [2:0] storemerge6_fu_381_p3;
wire   [63:0] grp_fu_236_p4;
wire   [31:0] grp_fu_245_p4;
reg   [0:0] ap_NS_fsm0;
reg   [1:0] ap_NS_fsm1;
reg    ap_sig_bdd_71;
reg    ap_sig_bdd_452;




/// the current state (ap_CS_fsm0) of the state machine. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_CS_fsm0
    if (ap_rst == 1'b1) begin
        ap_CS_fsm0 <= ap_ST_st1_fsm0_0;
    end else begin
        ap_CS_fsm0 <= ap_NS_fsm0;
    end
end

/// the current state (ap_CS_fsm1) of the state machine. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_CS_fsm1
    if (ap_rst == 1'b1) begin
        ap_CS_fsm1 <= ap_ST_st0_fsm1_0;
    end else begin
        ap_CS_fsm1 <= ap_NS_fsm1;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// keyResizerLength_V assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_keyResizerLength_V
    if (ap_rst == 1'b1) begin
        keyResizerLength_V <= ap_const_lv8_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            keyResizerLength_V <= in2hashKeyLength_V_V_dout;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
            keyResizerLength_V <= grp_fu_209_p2;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (keyResizerState_load_load_fu_254_p1 == ap_const_lv3_3))) begin
            keyResizerLength_V <= tmp_s_fu_287_p2;
        end
    end
end

/// keyResizerState assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_keyResizerState
    if (ap_rst == 1'b1) begin
        keyResizerState <= ap_const_lv3_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            keyResizerState <= storemerge7_fu_389_p3;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            keyResizerState <= storemerge9_fu_347_p3;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (keyResizerState_load_load_fu_254_p1 == ap_const_lv3_3))) begin
            keyResizerState <= storemerge5_fu_305_p3;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_4) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & ~(ap_const_lv1_0 == tmp_290_fu_281_p2)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & ~(ap_const_lv1_0 == tmp_291_fu_423_p2)))) begin
            keyResizerState <= grp_fu_195_p3;
        end else if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (keyResizerState_load_load_fu_254_p1 == ap_const_lv3_7)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (keyResizerState_load_load_fu_254_p1 == ap_const_lv3_6)) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))) & (keyResizerState_load_load_fu_254_p1 == ap_const_lv3_5)))) begin
            keyResizerState <= ap_const_lv3_0;
        end
    end
end

/// keyResizerState_load_reg_513 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_keyResizerState_load_reg_513
    if (ap_rst == 1'b1) begin
        keyResizerState_load_reg_513 <= ap_const_lv3_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            keyResizerState_load_reg_513 <= keyResizerState;
        end
    end
end

/// p_Val2_s_reg_517 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_p_Val2_s_reg_517
    if (ap_rst == 1'b1) begin
        p_Val2_s_reg_517 <= ap_const_lv128_lc_1;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            p_Val2_s_reg_517 <= tempInput_data_V;
        end
    end
end

/// resizedKeyOutput_V assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_resizedKeyOutput_V
    if (ap_rst == 1'b1) begin
        resizedKeyOutput_V <= ap_const_lv96_0;
    end else begin
        if (((ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
            resizedKeyOutput_V <= tmp_V_97_reg_569;
        end else if (((ap_const_lv3_1 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_63_reg_547) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
            resizedKeyOutput_V <= p_Result_s_fu_490_p3;
        end else if (((ap_const_lv3_2 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_64_reg_538) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
            resizedKeyOutput_V <= p_Result_59_fu_476_p3;
        end else if (((ap_const_lv3_4 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_65_reg_524) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
            resizedKeyOutput_V <= tmp_V_95_reg_528;
        end else if (((keyResizerState_load_reg_513 == ap_const_lv3_5) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
            resizedKeyOutput_V <= p_Result_60_fu_452_p5;
        end else if (((keyResizerState_load_reg_513 == ap_const_lv3_6) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
            resizedKeyOutput_V <= p_Result_61_fu_433_p5;
        end else if ((((keyResizerState_load_reg_513 == ap_const_lv3_7) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((keyResizerState_load_reg_513 == ap_const_lv3_3) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)))) begin
            resizedKeyOutput_V <= {{p_Val2_s_reg_517[ap_const_lv32_7F : ap_const_lv32_20]}};
        end
    end
end

/// tempInput_data_V assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tempInput_data_V
    if (ap_rst == 1'b1) begin
        tempInput_data_V <= ap_const_lv128_lc_1;
    end else begin
        if (ap_sig_bdd_452) begin
            if (ap_sig_bdd_71) begin
                tempInput_data_V <= p_Val2_44_fu_409_p1;
            end else if ((keyResizerState == ap_const_lv3_1)) begin
                tempInput_data_V <= p_Val2_41_fu_361_p1;
            end else if ((keyResizerState == ap_const_lv3_2)) begin
                tempInput_data_V <= p_Val2_42_fu_319_p1;
            end else if ((keyResizerState == ap_const_lv3_4)) begin
                tempInput_data_V <= p_Val2_43_fu_267_p1;
            end
        end
    end
end

/// tmp_387_reg_551 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_387_reg_551
    if (ap_rst == 1'b1) begin
        tmp_387_reg_551 <= ap_const_lv64_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_387_reg_551 <= tmp_387_fu_371_p1;
        end
    end
end

/// tmp_390_reg_542 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_390_reg_542
    if (ap_rst == 1'b1) begin
        tmp_390_reg_542 <= ap_const_lv32_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_390_reg_542 <= tmp_390_fu_329_p1;
        end
    end
end

/// tmp_63_reg_547 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_63_reg_547
    if (ap_rst == 1'b1) begin
        tmp_63_reg_547 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_63_reg_547 <= grp_nbreadreq_fu_130_p3;
        end
    end
end

/// tmp_64_reg_538 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_64_reg_538
    if (ap_rst == 1'b1) begin
        tmp_64_reg_538 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_64_reg_538 <= grp_nbreadreq_fu_130_p3;
        end
    end
end

/// tmp_65_reg_524 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_65_reg_524
    if (ap_rst == 1'b1) begin
        tmp_65_reg_524 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_4) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_65_reg_524 <= grp_nbreadreq_fu_130_p3;
        end
    end
end

/// tmp_66_reg_560 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_66_reg_560
    if (ap_rst == 1'b1) begin
        tmp_66_reg_560 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_66_reg_560 <= grp_nbreadreq_fu_130_p3;
        end
    end
end

/// tmp_V_95_reg_528 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_V_95_reg_528
    if (ap_rst == 1'b1) begin
        tmp_V_95_reg_528 <= ap_const_lv96_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_4) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_V_95_reg_528 <= tmp_V_95_fu_277_p1;
        end
    end
end

/// tmp_V_96_reg_564 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_V_96_reg_564
    if (ap_rst == 1'b1) begin
        tmp_V_96_reg_564 <= ap_const_lv8_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_V_96_reg_564 <= in2hashKeyLength_V_V_dout;
        end
    end
end

/// tmp_V_97_reg_569 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_V_97_reg_569
    if (ap_rst == 1'b1) begin
        tmp_V_97_reg_569 <= ap_const_lv96_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_V_97_reg_569 <= tmp_V_97_fu_419_p1;
        end
    end
end

/// tmp_reg_556 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_tmp_reg_556
    if (ap_rst == 1'b1) begin
        tmp_reg_556 <= ap_const_lv1_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
            tmp_reg_556 <= tmp_nbreadreq_fu_144_p3;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_cseq_ST_st0_fsm1_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (ap_const_logic_1 == ap_sig_cseq_ST_st0_fsm1_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_sig_bdd_82 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st0_fsm1_0 assign process. ///
always @ (ap_sig_bdd_34)
begin
    if (ap_sig_bdd_34) begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st0_fsm1_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm0_0 assign process. ///
always @ (ap_sig_bdd_23)
begin
    if (ap_sig_bdd_23) begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm0_0 = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st2_fsm1_1 assign process. ///
always @ (ap_sig_bdd_162)
begin
    if (ap_sig_bdd_162) begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st2_fsm1_1 = ap_const_logic_0;
    end
end

/// in2hashKeyLength_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or grp_nbreadreq_fu_130_p3 or tmp_nbreadreq_fu_144_p3 or ap_sig_bdd_82 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1 or keyResizerState)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
        in2hashKeyLength_V_V_read = ap_const_logic_1;
    end else begin
        in2hashKeyLength_V_V_read = ap_const_logic_0;
    end
end

/// in2hash_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or grp_nbreadreq_fu_130_p3 or tmp_nbreadreq_fu_144_p3 or ap_sig_bdd_82 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1 or keyResizerState)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & (keyResizerState == ap_const_lv3_4) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_2) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1)))))) begin
        in2hash_V_read = ap_const_logic_1;
    end else begin
        in2hash_V_read = ap_const_logic_0;
    end
end

/// resizedInitValue_V_write assign process. ///
always @ (ap_done_reg or keyResizerState_load_reg_513 or tmp_reg_556 or tmp_66_reg_560 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if (((ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedInitValue_V_write = ap_const_logic_1;
    end else begin
        resizedInitValue_V_write = ap_const_logic_0;
    end
end

/// resizedKeyLength_V_write assign process. ///
always @ (ap_done_reg or keyResizerState_load_reg_513 or tmp_reg_556 or tmp_66_reg_560 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if (((ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedKeyLength_V_write = ap_const_logic_1;
    end else begin
        resizedKeyLength_V_write = ap_const_logic_0;
    end
end

/// resizedKey_V_V_din assign process. ///
always @ (ap_done_reg or keyResizerState_load_reg_513 or tmp_65_reg_524 or tmp_64_reg_538 or tmp_63_reg_547 or tmp_reg_556 or tmp_66_reg_560 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1 or p_Val2_s_reg_517 or tmp_V_95_reg_528 or tmp_V_97_reg_569 or p_Result_61_fu_433_p5 or p_Result_60_fu_452_p5 or p_Result_59_fu_476_p3 or p_Result_s_fu_490_p3)
begin
    if (((ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedKey_V_V_din = tmp_V_97_reg_569;
    end else if (((ap_const_lv3_1 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_63_reg_547) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedKey_V_V_din = p_Result_s_fu_490_p3;
    end else if (((ap_const_lv3_2 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_64_reg_538) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedKey_V_V_din = p_Result_59_fu_476_p3;
    end else if (((ap_const_lv3_4 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_65_reg_524) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedKey_V_V_din = tmp_V_95_reg_528;
    end else if (((keyResizerState_load_reg_513 == ap_const_lv3_5) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedKey_V_V_din = p_Result_60_fu_452_p5;
    end else if (((keyResizerState_load_reg_513 == ap_const_lv3_6) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156))) begin
        resizedKey_V_V_din = p_Result_61_fu_433_p5;
    end else if ((((keyResizerState_load_reg_513 == ap_const_lv3_7) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((keyResizerState_load_reg_513 == ap_const_lv3_3) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)))) begin
        resizedKey_V_V_din = {{p_Val2_s_reg_517[ap_const_lv32_7F : ap_const_lv32_20]}};
    end else begin
        resizedKey_V_V_din = 'bx;
    end
end

/// resizedKey_V_V_write assign process. ///
always @ (ap_done_reg or keyResizerState_load_reg_513 or tmp_65_reg_524 or tmp_64_reg_538 or tmp_63_reg_547 or tmp_reg_556 or tmp_66_reg_560 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    if ((((keyResizerState_load_reg_513 == ap_const_lv3_7) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((keyResizerState_load_reg_513 == ap_const_lv3_6) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((keyResizerState_load_reg_513 == ap_const_lv3_5) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((ap_const_lv3_4 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_65_reg_524) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((keyResizerState_load_reg_513 == ap_const_lv3_3) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((ap_const_lv3_2 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_64_reg_538) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((ap_const_lv3_1 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_63_reg_547) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)) | ((ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560) & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156)))) begin
        resizedKey_V_V_write = ap_const_logic_1;
    end else begin
        resizedKey_V_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm0) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm0 or ap_sig_bdd_82 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    case (ap_CS_fsm0)
        ap_ST_st1_fsm0_0 : 
        begin
            ap_NS_fsm0 = ap_ST_st1_fsm0_0;
        end
        default : 
        begin
            ap_NS_fsm0 = 'bx;
        end
    endcase
end

/// the next state (ap_NS_fsm1) of the state machine. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or ap_CS_fsm1 or ap_sig_bdd_82 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    case (ap_CS_fsm1)
        ap_ST_st2_fsm1_1 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156) & ~ap_sig_bdd_82)) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else if ((~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_156) & (~(ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ap_sig_bdd_82)))) begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end else begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end
        end
        ap_ST_st0_fsm1_0 : 
        begin
            if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))))) begin
                ap_NS_fsm1 = ap_ST_st2_fsm1_1;
            end else begin
                ap_NS_fsm1 = ap_ST_st0_fsm1_0;
            end
        end
        default : 
        begin
            ap_NS_fsm1 = 'bx;
        end
    endcase
end


/// ap_sig_bdd_156 assign process. ///
always @ (resizedKey_V_V_full_n or keyResizerState_load_reg_513 or tmp_65_reg_524 or tmp_64_reg_538 or tmp_63_reg_547 or resizedKeyLength_V_full_n or tmp_reg_556 or tmp_66_reg_560 or resizedInitValue_V_full_n)
begin
    ap_sig_bdd_156 = (((resizedKey_V_V_full_n == ap_const_logic_0) & (keyResizerState_load_reg_513 == ap_const_lv3_7)) | ((resizedKey_V_V_full_n == ap_const_logic_0) & (keyResizerState_load_reg_513 == ap_const_lv3_6)) | ((resizedKey_V_V_full_n == ap_const_logic_0) & (keyResizerState_load_reg_513 == ap_const_lv3_5)) | ((resizedKey_V_V_full_n == ap_const_logic_0) & (ap_const_lv3_4 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_65_reg_524)) | ((resizedKey_V_V_full_n == ap_const_logic_0) & (keyResizerState_load_reg_513 == ap_const_lv3_3)) | ((resizedKey_V_V_full_n == ap_const_logic_0) & (ap_const_lv3_2 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_64_reg_538)) | ((resizedKey_V_V_full_n == ap_const_logic_0) & (ap_const_lv3_1 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_63_reg_547)) | ((resizedKeyLength_V_full_n == ap_const_logic_0) & (ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560)) | ((ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560) & (resizedInitValue_V_full_n == ap_const_logic_0)) | ((resizedKey_V_V_full_n == ap_const_logic_0) & (ap_const_lv3_0 == keyResizerState_load_reg_513) & ~(ap_const_lv1_0 == tmp_reg_556) & ~(ap_const_lv1_0 == tmp_66_reg_560)));
end

/// ap_sig_bdd_162 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_162 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_1]);
end

/// ap_sig_bdd_23 assign process. ///
always @ (ap_CS_fsm0)
begin
    ap_sig_bdd_23 = (ap_CS_fsm0[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_34 assign process. ///
always @ (ap_CS_fsm1)
begin
    ap_sig_bdd_34 = (ap_const_lv1_1 == ap_CS_fsm1[ap_const_lv32_0]);
end

/// ap_sig_bdd_452 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm0_0 or grp_nbreadreq_fu_130_p3 or ap_sig_bdd_82 or ap_sig_bdd_156 or ap_sig_cseq_ST_st2_fsm1_1)
begin
    ap_sig_bdd_452 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm0_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ap_sig_bdd_82 | (ap_sig_bdd_156 & (ap_const_logic_1 == ap_sig_cseq_ST_st2_fsm1_1))));
end

/// ap_sig_bdd_71 assign process. ///
always @ (tmp_nbreadreq_fu_144_p3 or keyResizerState)
begin
    ap_sig_bdd_71 = ((keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3));
end

/// ap_sig_bdd_82 assign process. ///
always @ (ap_start or ap_done_reg or in2hash_V_empty_n or grp_nbreadreq_fu_130_p3 or in2hashKeyLength_V_V_empty_n or tmp_nbreadreq_fu_144_p3 or keyResizerState)
begin
    ap_sig_bdd_82 = (((in2hash_V_empty_n == ap_const_logic_0) & (keyResizerState == ap_const_lv3_4) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0)) | ((in2hash_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_2)) | ((in2hash_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_1)) | (~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (in2hashKeyLength_V_V_empty_n == ap_const_logic_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3)) | ((in2hash_V_empty_n == ap_const_logic_0) & ~(grp_nbreadreq_fu_130_p3 == ap_const_lv1_0) & (keyResizerState == ap_const_lv3_0) & ~(ap_const_lv1_0 == tmp_nbreadreq_fu_144_p3)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign grp_fu_187_p3 = in2hash_V_dout[ap_const_lv32_81];
assign grp_fu_195_p3 = ((grp_fu_187_p3[0:0]===1'b1)? ap_const_lv3_5: ap_const_lv3_1);
assign grp_fu_209_p2 = ($signed(ap_const_lv8_F0) + $signed(keyResizerLength_V));
assign grp_fu_236_p4 = {{p_Val2_s_reg_517[ap_const_lv32_7F : ap_const_lv32_40]}};
assign grp_fu_245_p4 = {{p_Val2_s_reg_517[ap_const_lv32_7F : ap_const_lv32_60]}};
assign grp_nbreadreq_fu_130_p3 = in2hash_V_empty_n;
assign keyResizerState_load_load_fu_254_p1 = keyResizerState;
assign p_Result_59_fu_476_p3 = {{tmp_390_reg_542}, {grp_fu_236_p4}};
assign p_Result_60_fu_452_p5 = {{resizedKeyOutput_V[32'd95 : 32'd32]}, {grp_fu_245_p4}};
assign p_Result_61_fu_433_p5 = {{resizedKeyOutput_V[32'd95 : 32'd64]}, {grp_fu_236_p4}};
assign p_Result_s_fu_490_p3 = {{tmp_387_reg_551}, {grp_fu_245_p4}};
assign p_Val2_41_fu_361_p1 = in2hash_V_dout[127:0];
assign p_Val2_42_fu_319_p1 = in2hash_V_dout[127:0];
assign p_Val2_43_fu_267_p1 = in2hash_V_dout[127:0];
assign p_Val2_44_fu_409_p1 = in2hash_V_dout[127:0];
assign resizedInitValue_V_din = ap_const_lv32_D;
assign resizedKeyLength_V_din = tmp_V_96_reg_564;
assign storemerge5_fu_305_p3 = ((tmp_285_fu_299_p2[0:0]===1'b1)? ap_const_lv3_0: ap_const_lv3_4);
assign storemerge6_fu_381_p3 = ((grp_fu_187_p3[0:0]===1'b1)? ap_const_lv3_6: ap_const_lv3_2);
assign storemerge7_fu_389_p3 = ((tmp_287_fu_375_p2[0:0]===1'b1)? storemerge6_fu_381_p3: ap_const_lv3_0);
assign storemerge8_fu_339_p3 = ((grp_fu_187_p3[0:0]===1'b1)? ap_const_lv3_7: ap_const_lv3_3);
assign storemerge9_fu_347_p3 = ((tmp_289_fu_333_p2[0:0]===1'b1)? storemerge8_fu_339_p3: ap_const_lv3_0);
assign tmp_285_fu_299_p2 = (tmp_s_fu_287_p2 == ap_const_lv8_0? 1'b1: 1'b0);
assign tmp_287_fu_375_p2 = (grp_fu_209_p2 > ap_const_lv8_8? 1'b1: 1'b0);
assign tmp_289_fu_333_p2 = (grp_fu_209_p2 > ap_const_lv8_4? 1'b1: 1'b0);
assign tmp_290_fu_281_p2 = (keyResizerLength_V > ap_const_lv8_C? 1'b1: 1'b0);
assign tmp_291_fu_423_p2 = (in2hashKeyLength_V_V_dout > ap_const_lv8_C? 1'b1: 1'b0);
assign tmp_387_fu_371_p1 = in2hash_V_dout[63:0];
assign tmp_390_fu_329_p1 = in2hash_V_dout[31:0];
assign tmp_V_95_fu_277_p1 = in2hash_V_dout[95:0];
assign tmp_V_97_fu_419_p1 = in2hash_V_dout[95:0];
assign tmp_nbreadreq_fu_144_p3 = in2hashKeyLength_V_V_empty_n;
assign tmp_s_fu_287_p2 = ($signed(keyResizerLength_V) + $signed(ap_const_lv8_F0));


endmodule //memcachedPipeline_hashKeyResizer
