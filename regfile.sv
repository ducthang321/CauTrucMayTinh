module regfile(
	input logic i_clk,
	input logic i_rst,
	input logic [4:0] i_rs1_addr,
	input logic [4:0] i_rs2_addr,
	input logic [4:0] i_rd_addr,
	input logic [31:0] i_rd_data,
	input logic i_rd_wren,
	output logic [31:0] o_rs1_data,
	output logic [31:0] o_rs2_data
);

	logic [31:0] registers [31:0];
	assign o_rs1_data = (i_rs1_addr == 5'b00000) ? 32'b0: registers[i_rs1_addr];
	assign o_rs2_data = (i_rs2_addr == 5'b00000) ? 32'b0: registers[i_rs2_addr];
	
	always_ff @(posedge i_clk or negedge i_rst) begin
    if (i_rst == 0) begin
        for (int i = 0; i < 32; i++) begin //cac thanh ghi duoc rs ve 0
            registers[i] <= 32'b0;
        end
    end else if (i_rd_wren && (i_rd_addr != 5'b00000)) begin
        registers[i_rd_addr] <= i_rd_data;
    end
	end


endmodule 
