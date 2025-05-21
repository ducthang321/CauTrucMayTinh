module lsu (
    input  logic         i_clk,
    input  logic         i_rst,
    input  logic [31:0]  i_addr,         // Address from CPU
    input  logic [31:0]  i_st_data,      // Data input for writing
    input  logic         i_wren,         // Write enable
    output logic [31:0]  o_ld_data,      // Data output from LSU
    output logic [31:0]  o_io_ledr,      // Red LED
    output logic [31:0]  o_io_ledg,      // Green LED
    output logic [6:0]   o_io_hex0,      // 7-segment HEX0
    output logic [6:0]   o_io_hex1,      // 7-segment HEX1
    output logic [6:0]   o_io_hex2,      // 7-segment HEX2
    output logic [6:0]   o_io_hex3,      // 7-segment HEX3
    output logic [6:0]   o_io_hex4,      // 7-segment HEX4
    output logic [6:0]   o_io_hex5,      // 7-segment HEX5
    output logic [6:0]   o_io_hex6,      // 7-segment HEX6
    output logic [6:0]   o_io_hex7,      // 7-segment HEX7
    output logic [31:0]  o_io_lcd,       // LCD screen
    input  logic [31:0]  i_io_sw,        // Switches
    input  logic [3:0]   i_io_btn,       // Buttons
    input  logic [31:0]  i_data_mem_data, // Data from Data Memory

    output logic [31:0]  o_data_mem_out,  // Data output to Data Memory
    output logic [31:0]  o_data_mem_addr, // Address for Data Memory

);

    // Address mapping for data memory and peripheral devices
    localparam DATA_MEM_START  = 32'h2000;
    localparam DATA_MEM_END    = 32'h3FFF;

    localparam RED_LED_ADDR    = 32'h7000;
    localparam GREEN_LED_ADDR  = 32'h7010;
    localparam HEX_ADDR        = 32'h7020;
    localparam LCD_ADDR        = 32'h7030;
    localparam SWITCH_ADDR     = 32'h7800;
    localparam BUTTON_ADDR     = 32'h7810;
    logic [31:0] mem [0:2047];

    // Data read/write logic
    always_comb begin
        o_ld_data = 32'b0;
        // Control access based on address range
        if (i_addr >= DATA_MEM_START && i_addr <= DATA_MEM_END) begin
            o_ld_data = mem[i_addr];   // Read from Data Memory
            if (i_wren) begin
                mem[i_addr] = i_st_data; // Write data to Data Memory
            end
        end else begin
            // Read from peripheral devices
            case (i_addr)
                SWITCH_ADDR: o_ld_data = i_io_sw;                    // Read switches
                BUTTON_ADDR: o_ld_data = {28'b0, i_io_btn};          // Read buttons
                default: o_ld_data = 32'b0;                          // Invalid or unused address
            endcase
        end
    end

    // Combined logic for writing to memory and peripherals
    always_ff @(posedge i_clk or posedge i_rst) begin
        if (i_rst) begin
            // Reset peripheral devices
            o_io_ledr <= 32'b0;
            o_io_ledg <= 32'b0;
            o_io_hex0 <= 7'b0;
            o_io_hex1 <= 7'b0;
            o_io_hex2 <= 7'b0;
            o_io_hex3 <= 7'b0;
            o_io_hex4 <= 7'b0;
            o_io_hex5 <= 7'b0;
            o_io_hex6 <= 7'b0;
            o_io_hex7 <= 7'b0;
            o_io_lcd  <= 32'b0;
        end else if (i_wren) begin
            // Write data to peripheral devices based on address
            case (i_addr)
                RED_LED_ADDR:   o_io_ledr <= i_st_data;         // Write to red LEDs
                GREEN_LED_ADDR: o_io_ledg <= i_st_data;         // Write to green LEDs
                HEX_ADDR: begin                                // Write to 7-segment displays
                    o_io_hex0 <= i_st_data[6:0];
                    o_io_hex1 <= i_st_data[14:8];
                    o_io_hex2 <= i_st_data[22:16];
                    o_io_hex3 <= i_st_data[30:24];
                    o_io_hex4 <= i_st_data[6:0];
                    o_io_hex5 <= i_st_data[14:8];
                    o_io_hex6 <= i_st_data[22:16];
                    o_io_hex7 <= i_st_data[30:24];
                end
                LCD_ADDR:       o_io_lcd <= i_st_data;          // Write to LCD
            endcase
        end
    end
endmodule
