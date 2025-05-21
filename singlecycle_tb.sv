`timescale 1ns/1ns
module singlecycle_tb (
);

    logic i_clk;
    logic i_rst_n;
    logic [31:0]o_pc_debug;
    logic o_insn_vld;
    logic [31:0]o_io_ledr;
    logic [31:0]o_io_ledg;
    logic [6:0]o_io_hex0;
    logic [31:0]o_io_lcd;
    logic [31:0]i_io_sw;
    logic [3:0]i_io_btn;
    logic [31:0]instr_0;

    singlecycle dut (
        .i_clk(i_clk),
        .i_rst_n(i_rst_n),
        .o_pc_debug(o_pc_debug),
        .o_insn_vld(o_insn_vld),
        .o_io_ledr(o_io_ledr),
        .o_io_ledg(o_io_ledg),
        .o_io_hex0(o_io_hex0),
        .o_io_lcd(o_io_lcd),
        .i_io_sw(i_io_sw),
        .i_io_btn(i_io_btn),
        .instr_0(instr_0)
    );

    initial begin
        #0 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 0;
        i_io_sw = 0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hffffffff;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 0;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;

        #10 i_clk = 1;
        i_rst_n = 1;
        i_io_sw = 32'hfffffff0;
        i_io_btn = 0;
        
    end
    
endmodule

