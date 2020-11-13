module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n
);
    wire a_bAnd = a&b;
    wire c_dAnd = c&d;
    wire aband_cdandOr = a_bAnd|c_dAnd;
    assign out = aband_cdandOr;
    assign out_n = !aband_cdandOr;
endmodule