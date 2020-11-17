module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire c1, c2;
    wire[31:0] newb;
    assign newb = b^{32{sub}};
    add16 a0(a[15:0], newb[15:0], sub, sum[15:0], c1);
    add16 a1(a[31:16], newb[31:16], c1, sum[31:16], c2);
endmodule
