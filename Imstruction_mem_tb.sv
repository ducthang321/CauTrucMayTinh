`timescale 1ns/1ns
module instruction_memory_tb;

    reg [12:0] addr;
    wire [31:0] data_out;

    // Instantiate the instruction_memory module
    Instruction_mem dut (
        .addr(addr),
        .data_out(data_out)
    );

    initial begin
        // Giả lập giá trị cho một số địa chỉ trong bộ nhớ (thay thế $readmemh khi test nhanh)
        dut.mem[0] = 32'hAABBCCDD;
        dut.mem[1] = 32'h11223344;
        dut.mem[2] = 32'h55667788;

        // Test từng địa chỉ
        addr = 13'd0;
        #10;
        if (data_out !== 32'hAABBCCDD) $display("Test thất bại tại địa chỉ 0");

        addr = 13'd1;
        #10;
        if (data_out !== 32'h11223344) $display("Test thất bại tại địa chỉ 1");

        addr = 13'd2;
        #10;
        if (data_out !== 32'h55667788) $display("Test thất bại tại địa chỉ 2");

        $display("Tất cả kiểm tra instruction_memory đã hoàn tất.");
        $stop;
    end
endmodule
