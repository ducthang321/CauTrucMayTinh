module mux2_1 (
    input logic [31:0]i_a,
    input logic [31:0]i_b,
    input logic sel,
    output logic [31:0]o_mux
);

    always_comb begin: mux2_1
        case (sel)
            0 : o_mux = i_a;
            1 : o_mux = i_b;
            default: o_mux = 32'h00000000;
        endcase
    end
    
endmodule

