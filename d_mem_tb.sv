`timescale 1ns/1ns
module d_mem_tb;

    logic i_clk;
    logic i_wren;
    logic [12:0] addr;
    logic [31:0] data_in;
    logic [31:0] data_out;

    // Instantiate the data_memory module
    d_mem dut (
        .i_clk(i_clk),
        .i_wren(i_wren),
        .addr(addr),
        .data_in(data_in),
        .data_out(data_out)
    );

    // Tạo xung nhịp với chu kỳ 10ns
    always #5 i_clk = ~i_clk;

    initial begin
        // Khởi tạo tín hiệu
        i_clk = 0;
        i_wren = 0;
        addr = 13'd0;
        data_in = 32'h0;

        // Ghi dữ liệu vào địa chỉ 0 và kiểm tra đọc lại
        #10;
        i_wren = 1;
        addr = 13'd0;
        data_in = 32'hA5A5A5A5;
        #10;
        i_wren = 0;
        #10;
        if (data_out !== 32'hA5A5A5A5) $display("Test thất bại tại địa chỉ 0");

        // Ghi dữ liệu vào địa chỉ 1 và kiểm tra đọc lại
        i_wren = 1;
        addr = 13'd1;
        data_in = 32'h5A5A5A5A;
        #10;
        i_wren = 0;
        #10;
        if (data_out !== 32'h5A5A5A5A) $display("Test thất bại tại địa chỉ 1");

        // Ghi và kiểm tra địa chỉ 2
        i_wren = 1;
        addr = 13'd2;
        data_in = 32'h12345678;
        #10;
        i_wren = 0;
        #10;
        if (data_out !== 32'h12345678) $display("Test thất bại tại địa chỉ 2");

        $display("Tất cả kiểm tra data_memory đã hoàn tất.");
        $stop;
    end
endmodule

