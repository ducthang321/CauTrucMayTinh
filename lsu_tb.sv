`timescale 1ns/1ps

module lsu_tb;
    // Khai báo tín hiệu cho testbench
    logic         clk;
    logic         rst;
    logic [31:0]  addr;
    logic [31:0]  st_data;
    logic         wren;
    logic [31:0]  ld_data;
    logic [31:0]  io_ledr;
    logic [31:0]  io_ledg;
    logic [6:0]   io_hex0, io_hex1, io_hex2, io_hex3, io_hex4, io_hex5, io_hex6, io_hex7;
    logic [31:0]  io_lcd;
    logic [31:0]  io_sw;
    logic [3:0]   io_btn;
    logic [31:0]  instr_mem_data;
    logic [31:0]  data_mem_data;
    logic         instr_mem_en;
    logic         data_mem_en;

    // Khởi tạo mô-đun LSU
    lsu uut (
        .i_clk(clk),
        .i_rst(rst),
        .i_addr(addr),
        .i_st_data(st_data),
        .i_wren(wren),
        .o_ld_data(ld_data),
        .o_io_ledr(io_ledr),
        .o_io_ledg(io_ledg),
        .o_io_hex0(io_hex0),
        .o_io_hex1(io_hex1),
        .o_io_hex2(io_hex2),
        .o_io_hex3(io_hex3),
        .o_io_hex4(io_hex4),
        .o_io_hex5(io_hex5),
        .o_io_hex6(io_hex6),
        .o_io_hex7(io_hex7),
        .o_io_lcd(io_lcd),
        .i_io_sw(io_sw),
        .i_io_btn(io_btn),
        .i_instr_mem_data(instr_mem_data),
        .i_data_mem_data(data_mem_data),
        .o_instr_mem_en(instr_mem_en),
        .o_data_mem_en(data_mem_en)
    );

    // Tạo xung clock tự động với chu kỳ 10ns
    always #5 clk = ~clk;

    // Khối kiểm tra liên tục
    initial begin
        // Khởi tạo các tín hiệu
        clk = 0;
        rst = 1;
        addr = 32'b0;
        st_data = 32'b0;
        wren = 0;
        io_sw = 32'hFFFFFFFF;         // Giả lập giá trị công tắc
        io_btn = 4'b1111;             // Giả lập giá trị nút bấm
        instr_mem_data = 32'hA5A5A5A5; // Dữ liệu từ Instruction Memory
        data_mem_data = 32'h5A5A5A5A;  // Dữ liệu từ Data Memory

        // Đưa hệ thống ra khỏi reset
        #10 rst = 0;

        // Vòng lặp liên tục chạy giá trị từ 0 đến 9 trên các LED 7 đoạn
        forever begin
            // Vòng lặp từ 0 đến 9 cho các LED 7 đoạn
            for (int i = 0; i < 10; i++) begin
                // Đặt giá trị chạy từ 0 đến 9 cho tất cả các LED 7 đoạn
                addr = 32'h7020;           // Địa chỉ cho 7-segment displays
                st_data = {4{i[6:0]}};     // Giá trị cho từng đoạn LED
                wren = 1;
                #10 wren = 0;              // Ngắt tín hiệu ghi sau khi ghi xong
                #50;                       // Đợi một thời gian trước khi chuyển sang giá trị tiếp theo
            end
        end
    end
endmodule
