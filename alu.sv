module alu (
    input logic [31:0] i_operand_a,
    input logic [31:0] i_operand_b,
    input logic [3:0] i_alu_op,
    output logic [31:0] o_alu_data);

    parameter ADD = 4'b0000;
    parameter SUB = 4'b0001;
    parameter SLT = 4'b1000;
    parameter SLTU = 4'b1001;
    parameter XOR = 4'b0010;
    parameter OR = 4'b0100;
    parameter AND = 4'b0011;
    parameter SLL = 4'b0101;
    parameter SRL = 4'b0110;
    parameter SRA = 4'b0111;
    logic [31:0] temp = 32'h00000000;
    logic [31:0] temp_a = 32'h00000000;
    logic [31:0] temp_b = 32'h00000000;
    logic [31:0] temp_out = 32'h00000000;
    logic [31:0] l1 = 32'h00000000;
    logic [31:0] l2 = 32'h00000000;
    logic [31:0] l3 = 32'h00000000;
    logic [31:0] l4 = 32'h00000000;
    logic [31:0] l5 = 32'h00000000;
    always_comb begin : cacul
        case (i_alu_op)
            ADD : begin
                o_alu_data = i_operand_a + i_operand_b;
            end 
            SUB : begin
                o_alu_data = i_operand_a + ~(i_operand_b) +32'h00000001;
            end
            SLT : begin
                case ({i_operand_a[31],i_operand_b[31]})
                    2'b01 : o_alu_data = 0;
                    2'b10 : o_alu_data = 1; 
                    default: begin
                        temp = i_operand_a + ~(i_operand_b) +32'h00000001;
                        o_alu_data = 32'h00000000 + temp[31];
                    end
                endcase
            end
            SLTU : begin
                case ({i_operand_a[31],i_operand_b[31]})
                    2'b01 : o_alu_data = 1;
                    2'b10: o_alu_data = 0; 
                    default: begin
                        temp_a[31] = 0;
                        temp_b[31] = 0;
                        temp_a[30:0] = i_operand_a[30:0];
                        temp_b[30:0] = i_operand_b[30:0];
                        temp_out = temp_a + ~(temp_b) + 1;
                        o_alu_data = 32'h00000000 + temp_out[31];
                    end
                endcase
            end
            XOR : begin
                o_alu_data = i_operand_a ^ i_operand_b;
            end
            OR : begin
                o_alu_data = i_operand_a | i_operand_b;
            end
            AND : begin
                o_alu_data = i_operand_a & i_operand_b;
            end
            SLL : begin
                case (i_operand_b[0])
                    1'b1 : begin
                        l1[31:1] = i_operand_a[30:0];
                        l1[0] = 0;
                    end
                    default: l1 = i_operand_a;
                endcase
                case (i_operand_b[1])
                    1'b1 : begin
                        l2[31:2] = l1[29:0];
                        l2[1:0] = 0;
                    end
                    default:  l2 = l1;
                endcase
                case (i_operand_b[2])
                    1'b1 : begin
                        l3[31:4] = l2[27:0];
                        l3[3:0] = 0;
                    end
                    default: l3 = l2;
                endcase
                case (i_operand_b[3])
                    1'b1 : begin
                        l4[31:8] = l3[23:0];
                        l4[7:0] = 0;
                    end
                    default: l4 = l3;
                endcase
                case (i_operand_b[4])
                    1'b1 : begin
                        l5[31:16] = l4[15:0];
                        l5[15:0] = 0;
                    end
                    default: l5 = l4;
                endcase
                o_alu_data = l5;
            end
            SRL : begin
                case (i_operand_b[0])
                    1'b1 : begin
                        l1[30:0] = i_operand_a[31:1];
                        l1[31] = 0;
                    end
                    default: l1 = i_operand_a;
                endcase
                case (i_operand_b[1])
                    1'b1 : begin
                        l2[29:0] = l1[31:2];
                        l2[31:30] = 0;
                    end
                    default:  l2 = l1;
                endcase
                case (i_operand_b[2])
                    1'b1 : begin
                        l3[27:0] = l2[31:4];
                        l3[31:28] = 0;
                    end
                    default: l3 = l2;
                endcase
                case (i_operand_b[3])
                    1'b1 : begin
                        l4[23:0] = l3[31:8];
                        l4[31:24] = 0;
                    end
                    default: l4 = l3;
                endcase
                case (i_operand_b[4])
                    1'b1 : begin
                        l5[15:0] = l4[31:16];
                        l5[31:16] = 0;
                    end
                    default: l5 = l4;
                endcase
                o_alu_data = l5;
            end
            SRA : begin
                case (i_operand_b[0])
                    1'b1 : begin
                        l1[30:0] = i_operand_a[31:1];
                        l1[31] = i_operand_a[31];
                    end
                    default: l1 = i_operand_a;
                endcase
                case (i_operand_b[1])
                    1'b1 : begin
                        l2[29:0] = l1[31:2];
                        l2[31] = i_operand_a[31];
                        l2[30] = i_operand_a[31];
                    end
                    default:  l2 = l1;
                endcase
                case (i_operand_b[2])
                    1'b1 : begin
                        l3[27:0] = l2[31:4];
                        l3[31] = i_operand_a[31];
                        l3[30] = i_operand_a[31];
                        l3[29] = i_operand_a[31];
                        l3[28] = i_operand_a[31];
                    end
                    default: l3 = l2;
                endcase
                case (i_operand_b[3])
                    1'b1 : begin
                        l4[23:0] = l3[31:8];
                        l4[31] = i_operand_a[31];
                        l4[30] = i_operand_a[31];
                        l4[29] = i_operand_a[31];
                        l4[28] = i_operand_a[31];
                        l4[27] = i_operand_a[31];
                        l4[26] = i_operand_a[31];
                        l4[25] = i_operand_a[31];
                        l4[24] = i_operand_a[31];
                    end
                    default: l4 = l3;
                endcase
                case (i_operand_b[4])
                    1'b1 : begin
                        l5[15:0] = l4[31:16];
                        l5[31] = i_operand_a[31];
                        l5[30] = i_operand_a[31];
                        l5[29] = i_operand_a[31];
                        l5[28] = i_operand_a[31];
                        l5[27] = i_operand_a[31];
                        l5[26] = i_operand_a[31];
                        l5[25] = i_operand_a[31];
                        l5[24] = i_operand_a[31];
                        l5[23] = i_operand_a[31];
                        l5[22] = i_operand_a[31];
                        l5[21] = i_operand_a[31];
                        l5[20] = i_operand_a[31];
                        l5[19] = i_operand_a[31];
                        l5[18] = i_operand_a[31];
                        l5[17] = i_operand_a[31];
                        l5[16] = i_operand_a[31];
                    end
                    default: l5 = l4;
                endcase
                o_alu_data = l5;
            end
            default: o_alu_data = 32'h00000000;
        endcase
    end

endmodule

