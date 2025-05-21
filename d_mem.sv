module d_mem (
    input logic i_clk,                     // Clock input
    input logic i_wren,                    // Write enable
    input logic [31:0] addr,               // Full 32-bit address input (only 13 bits used internally)
    input logic [31:0] data_in,            // Data input
    output logic [31:0] data_out            // Data output
);
    // Memory array, 8KiB (2048 x 32-bit words)
    logic [31:0] mem [0:2047];

    // Define address range for this memory block
    parameter  BASE_ADDR = 32'h2000;
    parameter END_ADDR = 32'h3FFF;

    // Read and write logic with address range checking
    always @(posedge i_clk) begin
        if (addr >= BASE_ADDR && addr <= END_ADDR) begin
            if (i_wren) begin
                // Write to memory only if address is within range
                mem[addr[12:0]] <= data_in;
            end
            // Read from memory only if address is within range
            data_out <= mem[addr[12:0]];
        end else begin
            // Output zero if the address is out of range
            data_out <= 32'b0;
        end
    end
endmodule
