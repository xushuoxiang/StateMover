// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module memcachedPipeline_response_f (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        valueBuffer_rf_V_V_din,
        valueBuffer_rf_V_V_full_n,
        valueBuffer_rf_V_V_write,
        metadataBuffer_rf_V_V_din,
        metadataBuffer_rf_V_V_full_n,
        metadataBuffer_rf_V_V_write,
        merger2responseFormatter_V_dout,
        merger2responseFormatter_V_empty_n,
        merger2responseFormatter_V_read
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st1_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv2_0 = 2'b00;
parameter    ap_const_lv248_lc_1 = 248'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv2_1 = 2'b1;
parameter    ap_const_lv32_7C = 32'b1111100;
parameter    ap_const_lv32_7E = 32'b1111110;
parameter    ap_const_lv32_7F = 32'b1111111;
parameter    ap_const_lv32_80 = 32'b10000000;
parameter    ap_const_lv32_BF = 32'b10111111;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_F7 = 32'b11110111;
parameter    ap_const_lv32_7B = 32'b1111011;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [63:0] valueBuffer_rf_V_V_din;
input   valueBuffer_rf_V_V_full_n;
output   valueBuffer_rf_V_V_write;
output  [247:0] metadataBuffer_rf_V_V_din;
input   metadataBuffer_rf_V_V_full_n;
output   metadataBuffer_rf_V_V_write;
input  [255:0] merger2responseFormatter_V_dout;
input   merger2responseFormatter_V_empty_n;
output   merger2responseFormatter_V_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg valueBuffer_rf_V_V_write;
reg metadataBuffer_rf_V_V_write;
reg merger2responseFormatter_V_read;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_st1_fsm_0;
reg    ap_sig_bdd_20;
reg   [1:0] inWordCounter_V = 2'b00;
reg   [247:0] bf_metadataTempBuffer_V = 248'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
reg   [0:0] inWordCounter_V_flag_phi_fu_149_p4;
wire   [0:0] tmp_nbwritereq_fu_102_p3;
wire   [0:0] tmp_39_nbwritereq_fu_110_p3;
wire   [0:0] tmp_40_nbreadreq_fu_118_p3;
wire   [0:0] or_cond_fu_243_p2;
wire   [0:0] tmp_s_fu_237_p2;
wire   [0:0] tmp_139_fu_253_p3;
wire   [0:0] tmp_90_fu_280_p2;
wire   [0:0] tmp_137_fu_206_p3;
reg    ap_sig_bdd_91;
wire   [1:0] tmp_91_fu_286_p2;
reg   [0:0] inWordCounter_V_flag_3_phi_fu_170_p6;
wire   [0:0] p_inWordCounter_V_flag_fu_293_p2;
reg   [1:0] inWordCounter_V_new_3_phi_fu_183_p6;
wire   [1:0] p_inWordCounter_V_new_fu_300_p3;
wire   [247:0] p_Result_2_fu_261_p5;
wire   [247:0] p_Result_s_fu_309_p5;
wire   [0:0] tmp_136_fu_198_p3;
wire   [123:0] tmp_135_fu_194_p1;
wire   [0:0] tmp_138_fu_214_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_bdd_217;
reg    ap_sig_bdd_127;
reg    ap_sig_bdd_220;
reg    ap_sig_bdd_216;
reg    ap_sig_bdd_143;
reg    ap_sig_bdd_121;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st1_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
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
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_91)) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// bf_metadataTempBuffer_V assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_bf_metadataTempBuffer_V
    if (ap_rst == 1'b1) begin
        bf_metadataTempBuffer_V <= ap_const_lv248_lc_1;
    end else begin
        if (ap_sig_bdd_127) begin
            if (~(ap_const_lv1_0 == or_cond_fu_243_p2)) begin
                bf_metadataTempBuffer_V <= p_Result_s_fu_309_p5;
            end else if (ap_sig_bdd_217) begin
                bf_metadataTempBuffer_V <= p_Result_2_fu_261_p5;
            end
        end
    end
end

/// inWordCounter_V assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_inWordCounter_V
    if (ap_rst == 1'b1) begin
        inWordCounter_V <= ap_const_lv2_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & ~ap_sig_bdd_91 & ~(ap_const_lv1_0 == inWordCounter_V_flag_3_phi_fu_170_p6))) begin
            inWordCounter_V <= inWordCounter_V_new_3_phi_fu_183_p6;
        end
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_91)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_91))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_st1_fsm_0)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or ap_sig_bdd_91)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~ap_sig_bdd_91)) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_st1_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    end
end

/// inWordCounter_V_flag_3_phi_fu_170_p6 assign process. ///
always @ (or_cond_fu_243_p2 or p_inWordCounter_V_flag_fu_293_p2 or ap_sig_bdd_220 or ap_sig_bdd_216 or ap_sig_bdd_143)
begin
    if (ap_sig_bdd_143) begin
        if (ap_sig_bdd_216) begin
            inWordCounter_V_flag_3_phi_fu_170_p6 = p_inWordCounter_V_flag_fu_293_p2;
        end else if (ap_sig_bdd_220) begin
            inWordCounter_V_flag_3_phi_fu_170_p6 = ap_const_lv1_0;
        end else if (~(ap_const_lv1_0 == or_cond_fu_243_p2)) begin
            inWordCounter_V_flag_3_phi_fu_170_p6 = ap_const_lv1_1;
        end else begin
            inWordCounter_V_flag_3_phi_fu_170_p6 = 'bx;
        end
    end else begin
        inWordCounter_V_flag_3_phi_fu_170_p6 = 'bx;
    end
end

/// inWordCounter_V_flag_phi_fu_149_p4 assign process. ///
always @ (tmp_139_fu_253_p3 or ap_sig_bdd_121)
begin
    if (ap_sig_bdd_121) begin
        if (~(ap_const_lv1_0 == tmp_139_fu_253_p3)) begin
            inWordCounter_V_flag_phi_fu_149_p4 = ap_const_lv1_0;
        end else if ((ap_const_lv1_0 == tmp_139_fu_253_p3)) begin
            inWordCounter_V_flag_phi_fu_149_p4 = ap_const_lv1_1;
        end else begin
            inWordCounter_V_flag_phi_fu_149_p4 = 'bx;
        end
    end else begin
        inWordCounter_V_flag_phi_fu_149_p4 = 'bx;
    end
end

/// inWordCounter_V_new_3_phi_fu_183_p6 assign process. ///
always @ (or_cond_fu_243_p2 or p_inWordCounter_V_new_fu_300_p3 or ap_sig_bdd_216 or ap_sig_bdd_143)
begin
    if (ap_sig_bdd_143) begin
        if (ap_sig_bdd_216) begin
            inWordCounter_V_new_3_phi_fu_183_p6 = p_inWordCounter_V_new_fu_300_p3;
        end else if (~(ap_const_lv1_0 == or_cond_fu_243_p2)) begin
            inWordCounter_V_new_3_phi_fu_183_p6 = ap_const_lv2_1;
        end else begin
            inWordCounter_V_new_3_phi_fu_183_p6 = 'bx;
        end
    end else begin
        inWordCounter_V_new_3_phi_fu_183_p6 = 'bx;
    end
end

/// merger2responseFormatter_V_read assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbwritereq_fu_102_p3 or tmp_39_nbwritereq_fu_110_p3 or tmp_40_nbreadreq_fu_118_p3 or ap_sig_bdd_91)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & ~ap_sig_bdd_91)) begin
        merger2responseFormatter_V_read = ap_const_logic_1;
    end else begin
        merger2responseFormatter_V_read = ap_const_logic_0;
    end
end

/// metadataBuffer_rf_V_V_write assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbwritereq_fu_102_p3 or tmp_39_nbwritereq_fu_110_p3 or tmp_40_nbreadreq_fu_118_p3 or or_cond_fu_243_p2 or tmp_s_fu_237_p2 or tmp_139_fu_253_p3 or tmp_90_fu_280_p2 or ap_sig_bdd_91)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & (ap_const_lv1_0 == or_cond_fu_243_p2) & (ap_const_lv1_0 == tmp_s_fu_237_p2) & (ap_const_lv1_0 == tmp_139_fu_253_p3) & ~(ap_const_lv1_0 == tmp_90_fu_280_p2) & ~ap_sig_bdd_91)) begin
        metadataBuffer_rf_V_V_write = ap_const_logic_1;
    end else begin
        metadataBuffer_rf_V_V_write = ap_const_logic_0;
    end
end

/// valueBuffer_rf_V_V_write assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbwritereq_fu_102_p3 or tmp_39_nbwritereq_fu_110_p3 or tmp_40_nbreadreq_fu_118_p3 or or_cond_fu_243_p2 or tmp_s_fu_237_p2 or tmp_137_fu_206_p3 or ap_sig_bdd_91)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & (ap_const_lv1_0 == or_cond_fu_243_p2) & (ap_const_lv1_0 == tmp_s_fu_237_p2) & ~(ap_const_lv1_0 == tmp_137_fu_206_p3) & ~ap_sig_bdd_91) | ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & ~(ap_const_lv1_0 == tmp_137_fu_206_p3) & ~(ap_const_lv1_0 == or_cond_fu_243_p2) & ~ap_sig_bdd_91))) begin
        valueBuffer_rf_V_V_write = ap_const_logic_1;
    end else begin
        valueBuffer_rf_V_V_write = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_CS_fsm or ap_sig_bdd_91)
begin
    case (ap_CS_fsm)
        ap_ST_st1_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_st1_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end


/// ap_sig_bdd_121 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbwritereq_fu_102_p3 or tmp_39_nbwritereq_fu_110_p3 or tmp_40_nbreadreq_fu_118_p3 or or_cond_fu_243_p2 or tmp_s_fu_237_p2)
begin
    ap_sig_bdd_121 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & (ap_const_lv1_0 == or_cond_fu_243_p2) & (ap_const_lv1_0 == tmp_s_fu_237_p2));
end

/// ap_sig_bdd_127 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbwritereq_fu_102_p3 or tmp_39_nbwritereq_fu_110_p3 or tmp_40_nbreadreq_fu_118_p3 or ap_sig_bdd_91)
begin
    ap_sig_bdd_127 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & ~ap_sig_bdd_91);
end

/// ap_sig_bdd_143 assign process. ///
always @ (ap_sig_cseq_ST_st1_fsm_0 or tmp_nbwritereq_fu_102_p3 or tmp_39_nbwritereq_fu_110_p3 or tmp_40_nbreadreq_fu_118_p3)
begin
    ap_sig_bdd_143 = ((ap_const_logic_1 == ap_sig_cseq_ST_st1_fsm_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_216 assign process. ///
always @ (or_cond_fu_243_p2 or tmp_s_fu_237_p2)
begin
    ap_sig_bdd_216 = ((ap_const_lv1_0 == or_cond_fu_243_p2) & (ap_const_lv1_0 == tmp_s_fu_237_p2));
end

/// ap_sig_bdd_217 assign process. ///
always @ (or_cond_fu_243_p2 or tmp_s_fu_237_p2 or tmp_139_fu_253_p3)
begin
    ap_sig_bdd_217 = ((ap_const_lv1_0 == or_cond_fu_243_p2) & (ap_const_lv1_0 == tmp_s_fu_237_p2) & (ap_const_lv1_0 == tmp_139_fu_253_p3));
end

/// ap_sig_bdd_220 assign process. ///
always @ (or_cond_fu_243_p2 or tmp_s_fu_237_p2)
begin
    ap_sig_bdd_220 = ((ap_const_lv1_0 == or_cond_fu_243_p2) & ~(ap_const_lv1_0 == tmp_s_fu_237_p2));
end

/// ap_sig_bdd_91 assign process. ///
always @ (ap_start or ap_done_reg or valueBuffer_rf_V_V_full_n or metadataBuffer_rf_V_V_full_n or merger2responseFormatter_V_empty_n or tmp_nbwritereq_fu_102_p3 or tmp_39_nbwritereq_fu_110_p3 or tmp_40_nbreadreq_fu_118_p3 or or_cond_fu_243_p2 or tmp_s_fu_237_p2 or tmp_139_fu_253_p3 or tmp_90_fu_280_p2 or tmp_137_fu_206_p3)
begin
    ap_sig_bdd_91 = (((merger2responseFormatter_V_empty_n == ap_const_logic_0) & ~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3)) | (~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & (metadataBuffer_rf_V_V_full_n == ap_const_logic_0) & (ap_const_lv1_0 == or_cond_fu_243_p2) & (ap_const_lv1_0 == tmp_s_fu_237_p2) & (ap_const_lv1_0 == tmp_139_fu_253_p3) & ~(ap_const_lv1_0 == tmp_90_fu_280_p2)) | (~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & (ap_const_lv1_0 == or_cond_fu_243_p2) & (ap_const_lv1_0 == tmp_s_fu_237_p2) & (valueBuffer_rf_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_137_fu_206_p3)) | (~(tmp_nbwritereq_fu_102_p3 == ap_const_lv1_0) & ~(ap_const_lv1_0 == tmp_39_nbwritereq_fu_110_p3) & ~(ap_const_lv1_0 == tmp_40_nbreadreq_fu_118_p3) & (valueBuffer_rf_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_137_fu_206_p3) & ~(ap_const_lv1_0 == or_cond_fu_243_p2)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end
assign metadataBuffer_rf_V_V_din = {{tmp_135_fu_194_p1}, {bf_metadataTempBuffer_V[32'd123 : 32'd0]}};
assign or_cond_fu_243_p2 = (tmp_136_fu_198_p3 & tmp_s_fu_237_p2);
assign p_Result_2_fu_261_p5 = {{tmp_135_fu_194_p1}, {bf_metadataTempBuffer_V[32'd123 : 32'd0]}};
assign p_Result_s_fu_309_p5 = {{bf_metadataTempBuffer_V[32'd247 : 32'd124]}, {tmp_135_fu_194_p1}};
assign p_inWordCounter_V_flag_fu_293_p2 = (tmp_138_fu_214_p3 | inWordCounter_V_flag_phi_fu_149_p4);
assign p_inWordCounter_V_new_fu_300_p3 = ((tmp_138_fu_214_p3[0:0]===1'b1)? ap_const_lv2_0: tmp_91_fu_286_p2);
assign tmp_135_fu_194_p1 = merger2responseFormatter_V_dout[123:0];
assign tmp_136_fu_198_p3 = merger2responseFormatter_V_dout[ap_const_lv32_7C];
assign tmp_137_fu_206_p3 = merger2responseFormatter_V_dout[ap_const_lv32_7E];
assign tmp_138_fu_214_p3 = merger2responseFormatter_V_dout[ap_const_lv32_7F];
assign tmp_139_fu_253_p3 = inWordCounter_V[ap_const_lv32_1];
assign tmp_39_nbwritereq_fu_110_p3 = metadataBuffer_rf_V_V_full_n;
assign tmp_40_nbreadreq_fu_118_p3 = merger2responseFormatter_V_empty_n;
assign tmp_90_fu_280_p2 = (inWordCounter_V == ap_const_lv2_1? 1'b1: 1'b0);
assign tmp_91_fu_286_p2 = (inWordCounter_V + ap_const_lv2_1);
assign tmp_nbwritereq_fu_102_p3 = valueBuffer_rf_V_V_full_n;
assign tmp_s_fu_237_p2 = (inWordCounter_V == ap_const_lv2_0? 1'b1: 1'b0);
assign valueBuffer_rf_V_V_din = {{merger2responseFormatter_V_dout[ap_const_lv32_BF : ap_const_lv32_80]}};


endmodule //memcachedPipeline_response_f
