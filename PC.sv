module PC (
    input logic clk_i,
    input logic reset,
    input logic [31:0]pc_next,
    output logic [31:0]pc_out,
    output logic [31:0]pc_four
);

    always @(posedge clk_i, negedge reset) begin
		case (reset)
            0: begin
                pc_out = 32'h00000000;
                pc_four = pc_out + 4;
            end 
            default: begin
                pc_out = pc_next;
                pc_four = pc_out + 4;
            end
        endcase
	end
    
endmodule

