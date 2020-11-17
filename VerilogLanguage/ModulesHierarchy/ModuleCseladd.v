module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire c1, c20, c21;
    wire[15:0] tempsum0, tempsum1;
    add16(a[15:0], b[15:0],0,sum[15:0],c1);
    add16(a[31:16], b[31:16], 0, tempsum0, c20);
    add16(a[31:16], b[31:16], 1, tempsum1, c21);
    always @(*)
        case(c1)
            1'b0: sum[31:16] = tempsum0;
            1'b1: sum[31:16] = tempsum1;
        endcase
endmodule