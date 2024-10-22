module lsu(
	input logic i_clk,
	input logic i_rst,
	input logic [31:0] i_lsu_addr,
	input logic [31:0] i_st_data, // du lieu can ghi
	input logic i_lsu_wren, // tinh hieu cho phep ghi doc
	input logic [31:0] i_io_sw,
	input logic [3:0] i_io_btn,
	output logic [31:0] o_ld_data,
	output logic [31:0] o_io_ledr,
	output logic [31:0] o_io_ledg,
	//led 7 seg
	output logic [6:0] o_io_hex0,
	output logic [6:0] o_io_hex1,
	output logic [6:0] o_io_hex2,
	output logic [6:0] o_io_hex3,
	output logic [6:0] o_io_hex4,
	output logic [6:0] o_io_hex5,
	output logic [6:0] o_io_hex6,
	output logic [6:0] o_io_hex7,
	//--------------------
	output logic [31:0] o_io_lcd
);
	// ------------memory
	parameter logic [31:0] ins_memory [2047:0];
	parameter logic [31:0] data_memory [2047:0];
	
	//------------led
	parameter logic [31:0] led_r;
	parameter logic [31:0] led_g;
	parameter logic [6:0] hex7seg [7:0];
	
	parameter logic [31:0] lcd_display;
	
	always_ff @(posedge i_clk posedge i_rst) begin
		if (i_rst) begin
		led_r <= 32'd0;
		led_g <= 32'd0;
		hex7seg[0] <= 7'd0;
		hex7seg[1] <= 7'd0;
		hex7seg[2] <= 7'd0;
		hex7seg[3] <= 7'd0;
		hex7seg[4] <= 7'd0;
		hex7seg[5] <= 7'd0;
		hex7seg[6] <= 7'd0;
		hex7seg[7] <= 7'd0;
		lcd_display <= 32'd0;
		end
		else begin
			if (i_lsu_wren) begin
				case (i_lsu_addr)
					32'h7000: led_r <= i_st_data;	//red led 
					32'h7010: led_g <= i_st_data;	//	green led
					
					32'h7020: hex7seg[0] <= i_st_data[6:0];	//7 segment
					32'h7021: hex7seg[1] <= i_st_data[6:0];
					32'h7022: hex7seg[2] <= i_st_data[6:0];
					32'h7023: hex7seg[3] <= i_st_data[6:0];
					32'h7024: hex7seg[4] <= i_st_data[6:0];
					32'h7025: hex7seg[5] <= i_st_data[6:0];
					32'h7026: hex7seg[6] <= i_st_data[6:0];
					32'h7027: hex7seg[7] <= i_st_data[6:0];
					
					32'h7030: lcd_display <= i_st_data; 	// lcd control
					
					32'h2000: data_memory[i_lsu_addr[12:2]] <= i_st_data; //*note 
					
					32'h7800: 	// switch
					32'h7810:	//buttons
					
					default: if (i_lsu_addr >= 32'h0000 && i_lsu_addr <= 32'h1FFF)
                                instruction_memory[i_lsu_addr[12:2]] <= i_st_data; // note
					
			end
		end
	
	end

// Doc du lieu
	always_comb begin
		case(i_lsu_addr)
		
	end
	
endmodule 
