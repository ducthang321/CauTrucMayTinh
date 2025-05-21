module mux3_1 (
    input logic [31:0]i_a,
    input logic [31:0]i_b,
    input logic [31:0]i_c,
    input logic [1:0]sel,
    output logic [31:0]o_mux
);

    always_comb begin: mux3_1
        case (sel)
            2'b00 : o_mux = i_a;
            2'b01 : o_mux = i_b;
            2'b10 : o_mux = i_c;
            default: o_mux = 32'h00000000;
        endcase
    end
    
endmodule


