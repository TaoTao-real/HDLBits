module top_module(
    input p1a,
    input p2a,
    input p2b,
    input p2c,
    input p2d,
    input p1c,
    input p1b,
    input p1f,
    input p1e,
    input p1d,
    output p2y,
    output p1y
);
    assign p1y = (p1a&p1c&p1b) | (p1f&p1e&p1d);
    assign p2y = (p2a&p2b) | (p2c&p2d);
endmodule