module(
    input logic [31:0] instr, 
    //input logic [6:0] opcode,
    output logic pc_sel,
    output logic rd_wren,
    output logic br_un,
    input logic br_less,
    input logic br_equal,
    output logic opa_sel,
    output logic opb_sel,
    output logic [3:0] alu_op,
    output logic mem_wren,
    output logic [] wb_sel
);
    //opcode instr[6:2]
    parameter OP = 5'b01100;
    parameter OP_IMM = 5'b00100;
    parameter LOAD = 5'b00000;
    parameter STORE = 5'b01000;
    parameter LUI = 5'b01101;
    parameter BRANCH = 5'b11000;
    parameter AUIPC = 5'b00101;
    parameter JALR = 5'b11001;
    parameter JAL = 5'b11011;
    parameter HEX_DEC = 5'b11111;

    // op
    parameter ADD_SUB = 3'b000;
    parameter SLL = 3'b001;
    parameter SLT = 3'b010;
    parameter SLTU = 3'b011;
    parameter XOR = 3'b100;
    parameter SRL_SRA = 3'b101;
    parameter OR = 3'b110;
    parameter AND = 3'b111;

    //op_imm
    parameter ADDI = 3'b000;
    parameter SLTI = 3'b010;
    parameter SLTIU = 3'b011;
    parameter XORI = 3'b100;
    parameter ORI = 3'b110;
    parameter ANDI = 3'b111;
    parameter SLLI = 3'b001;
    parameter SRLI_SRAI = 3'b101;

    //load
    parameter LB = 3'b000;
    parameter LH = 3'b001;
    parameter LW = 3'b010;
    parameter LBU = 3'100;
    parameter LHU = 3'b101;

    //store
    parameter SB = 3'b000;
    parameter SH = 3'b001;
    parameter SW = 3'b010;

    //branch
    parameter BEQ = 3'b000;
    parameter BNE = 3'b001;
    parameter BLT = 3'b100;
    parameter BGE = 3'b101;
    parameter BLTU = 3'b110;
    parameter BGEU = 3'b111;

    always_comb begin
        case (instr[6:2])
            HEX_DEC: begin
                
            end 
            OP: begin
                case (instr[14:12])
                    ADD_SUB:begin
                        if (instr[30] = 0) begin
                           //phep cong 
                        end
                        else begin
                            //phep tru
                        end 
                    end
                    SLL:begin
                        
                    end 
                    SLT:begin
                        
                    end
                    SLTU:begin
                        
                    end
                    XOR:begin
                        
                    end
                    SRL_SRA:begin
                        
                    end
                    OR:begin
                        
                    end
                    ADD:begin
                        
                    end
                    default: 
                endcase
            end
            OP_IMM: begin
                case (instr[14:12])
                    ADDI:begin
                        
                    end 
                    SLTI:begin
                        
                    end
                    SLTIU:begin
                        
                    end
                    XORI:begin
                        
                    end
                    ORI:begin
                        
                    end
                    ANDI:begin
                        
                    end
                    SLLI:begin
                        
                    end
                    SRLI_SRAI:begin
                        
                    end
                    default: 
                endcase
            end
            LOAD: begin
                case (instr[14:12])
                    LB:begin
                        
                    end 
                    LH:begin
                        
                    end
                    LW:begin
                        
                    end
                    LBU:begin
                        
                    end
                    LHU:begin
                        
                    end
                    default: 
                endcase
            end
            STORE: begin
                case (instr[14:12])
                    SB:begin
                        
                    end
                    SH:begin
                        
                    end 
                    SW:begin
                        
                    end
                    default: 
                endcase
            end
            LUI: begin
                
            end
            BRANCH: begin
                case (instr[14:!2])
                    BEQ: begin
                        
                    end
                    BNE: begin
                        
                    end 
                    BLT: begin
                        
                    end
                    BGE: begin
                        
                    end
                    BLTU: begin
                        
                    end
                    BGEU: begin
                        
                    end
                    default: 
                endcase
            end
            AUIPC: begin
                
            end
            JALR: begin
                
            end
            JAL: begin
                
            end
            default: 
        endcase

    end

endmodule
