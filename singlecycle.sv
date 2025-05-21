module singlecycle (
    input logic i_clk,
    input logic i_rst_n,
    output logic [31:0]o_pc_debug,
    output logic o_insn_vld,
    output logic [31:0]o_io_ledr,
    output logic [31:0]o_io_ledg,
    output logic [6:0]o_io_hex0,
    output logic [31:0]o_io_lcd,
    input logic [31:0]i_io_sw,
    input logic [3:0]i_io_btn,


    output logic [31:0]instr_0
);


    logic [31:0] pc,pc_next,pc_four,instr,imm_gen0,rs1_data,rs2_data,operand_a,operand_b,alu_data,ld_data,wb_data;
    logic pc_sel,rd_wren,br_un,br_less,br_equal,opa_sel,opb_sel,mem_wren;
    logic [3:0] alu_op;
    logic [1:0] wb_sel;
    logic [2:0] imm_gen_sel;

    mux2_1 muxPC(.i_a(pc_four),.i_b(alu_data),.sel(pc_sel),.o_mux(pc_next));
    PC PC_counter(.clk_i(i_clk),.reset(i_rst_n),.pc_next(pc_next),.pc_out(pc),.pc_four(pc_four));
    instruction_mem instructionMemory(.address(pc),.instr(instr));
    regfile RegFile(.i_clk(i_clk),.i_rst(i_rst_n),.i_rs1_addr(instr[19:15]),.i_rs2_addr(instr[24:20]),.i_rd_addr(instr[11:7]),.i_rd_data(wb_data),.i_rd_wren(rd_wren),.o_rs1_data(rs1_data),.o_rs2_data(rs2_data));
    imm_gen immGen (.instr(instr),.imm_sel(imm_gen_sel),.imm(imm_gen0));
    brc branch (.i_rs1_data(rs1_data),.i_rs2_data(rs2_data),.i_br_un(br_un),.o_br_less(br_less),.o_br_equal(br_equal));
    mux2_1 muxA (.i_a(rs1_data),.i_b(pc),.sel(opa_sel),.o_mux(operand_a));
    mux2_1 muxB (.i_a(rs2_data),.i_b(imm_gen0),.sel(opb_sel),.o_mux(operand_b));
    alu ALU (.i_operand_a(operand_a),.i_operand_b(operand_b),.i_alu_op(alu_op),.o_alu_data(alu_data));
    mux3_1 writeReg (.i_a(alu_data),.i_b(ld_data),.i_c(pc_four),.sel(wb_sel),.o_mux(wb_data));
    lsu LSU (.i_clk(i_clk),.i_rst(i_rst_n),.i_lsu_addr(alu_data),.i_st_data(rs2_data),.i_lsu_wren(mem_wren),.i_io_sw(i_io_sw),.i_io_btn(i_io_btn),.o_ld_data(ld_data),.o_io_ledr(o_io_ledr),.o_io_ledg(o_io_ledg),.o_io_hex0(o_io_hex0),.o_io_lcd(o_io_lcd));
    control_unit controlUnit (.instr(instr),.br_equal(br_equal),.br_less(br_less),.imm_gen_sel(imm_gen_sel),.alu_op(alu_op),.reg_wr_en(rd_wren),.PC_sel(pc_sel),.branch_u(br_un),.dmem_wr(mem_wren),.op_a_sel(opa_sel),.op_b_sel(opb_sel),.wb_sel(wb_sel));
    assign instr_0 = instr;
endmodule

