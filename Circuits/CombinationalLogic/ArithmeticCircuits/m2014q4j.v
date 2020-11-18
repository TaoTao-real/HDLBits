module full_add( 
    input a, b, cin,
    output cout, sum );
	assign sum = a^b^cin;
    assign cout = (a&b)|(a&cin)|(b&cin);
endmodule
module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire c1,c2,c3,c4;
    full_add fa1(x[0],y[0],0,c1,sum[0]);
    full_add fa2(x[1],y[1],c1,c2,sum[1]);
    full_add fa3(x[2],y[2],c2,c3,sum[2]);
    full_add fa4(x[3],y[3],c3,c4,sum[3]);
    assign sum[4] = c4;
endmodule

module top_module (
	input [3:0] x,
	input [3:0] y,
	output [4:0] sum
);

	// This circuit is a 4-bit ripple-carry adder with carry-out.
	assign sum = x+y;	// Verilog addition automatically produces the carry-out bit.

	// Verilog quirk: Even though the value of (x+y) includes the carry-out, (x+y) is still considered to be a 4-bit number (The max width of the two operands).
	// This is correct:
	// assign sum = (x+y);
	// But this is incorrect:
	// assign sum = {x+y};	// Concatenation operator: This discards the carry-out
endmodule
