/**
 * name: pc_addr
 * desc: incrment and output new value for program counter
 */

module pc_adder  (
    input logic [31:0] in,
    output logic [31:0] out
);
    assign out = in + 4;
endmodule