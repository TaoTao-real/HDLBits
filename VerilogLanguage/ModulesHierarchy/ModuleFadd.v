module top_module (
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);//
    wire c1, c2;
    add16(a[15:0],b[15:0],0, sum[15:0], c1);
    add16(a[31:16], b[31:16], c1, sum[31:16], c2);
endmodule

module add1 ( input a, input b, input cin,   output sum, output cout );

	assign sum = a^b^cin;
    assign cout = (a&b)|(a&cin)|(b&cin);

endmodule