module decoder (
    input   logic [5:0] opcode,
    input   logic [5:0] func,
    output  logic       write_reg = 0,
    output  logic [5:0] alu_control = 0
);
    always_comb begin
        case (opcode)
            /* type R */
            6'b000000: begin
                case (func)
                    /* ADDU rd,rs,rt */
                    6'b100001: begin
                        write_reg = 1'b1;
                        alu_control = 6'b100001;
                    end
                endcase
            end
            default: begin
                write_reg = 1'b0;
                alu_control = 6'b111111;
            end
        endcase
    end
endmodule