module instruction_memory (
    input wire [12:0] addr,         // 13-bit address for 8KiB memory (2^13 = 8192 bytes)
    output reg [31:0] data_out      // 32-bit instruction output
);
    reg [31:0] mem [0:2047];        // 8KiB = 2048 x 32-bit words

    initial begin
        // Load instructions from file (optional)
         $readmemh("instructionsMemory.txt", mem); // Uncomment to use memory initialization file
    end

    always @(*) begin
        data_out = mem[addr]; // Read from ROM
    end
endmodule
