module brc (
    input logic [31:0]i_rs1_data,
    input logic [31:0]i_rs2_data,
    input logic i_br_un,
    output logic o_br_less,
    output logic o_br_equal
);
    logic [31:0] temp = 32'h00000000;
    logic [31:0] temp_a = 32'h00000000;
    logic [31:0] temp_b = 32'h00000000;
    logic [31:0] temp_out = 32'h00000000;
    logic [1:0] sel = 0;
    always_comb begin : branch
        sel[1] = i_rs1_data[31];
        sel[0] = i_rs2_data[31];
        case (i_br_un)
            1'b1 : begin
                case (sel)
                    2'b01 : begin
                        o_br_less = 0;
                        o_br_equal = 0;
                    end 
                    2'b10 : begin
                        o_br_less = 1;
                        o_br_equal = 0;
                    end
                    default: begin
                        temp = i_rs1_data + ~(i_rs2_data) + 1;
                        o_br_less = temp[31];
                        o_br_equal = ~ (|temp);
                    end
                endcase
            end 
            default: begin
                case (sel)
                    2'b01 : begin
                        o_br_less = 1;
                        o_br_equal = 0;
                    end 
                    2'b10: begin
                        o_br_less = 0;
                        o_br_equal = 0;
                    end
                    default: begin
                        temp_a[31] = 0;
                        temp_b[31] = 0;
                        temp_a[30:0] = i_rs1_data[30:0];
                        temp_b[30:0] = i_rs2_data[30:0];
                        temp_out = temp_a + ~(temp_b) + 1;
                        o_br_less = temp_out[31];
                        o_br_equal = ~ (|temp_out);
                    end
                endcase
            end
        endcase
    end
    
endmodule
