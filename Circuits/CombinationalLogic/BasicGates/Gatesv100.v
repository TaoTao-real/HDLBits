module top_module (
	input [99:0] in,
	output [98:0] out_both,
	output [99:1] out_any,
	output [99:0] out_different
);

	// See gatesv for explanations.
	assign out_both = in & in[99:1];
	assign out_any = in[99:1] | in ;
	assign out_different = in ^ {in[0], in[99:1]};
	
endmodule

module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    always @(*) begin
        for(int i = 0; i < 99; i=i+1) begin
            out_both[i] = in[i+1]&in[i];
        end
        for(int i = 1; i < 100; i=i+1) begin
            out_any[i] = in[i]|in[i-1];
        end
        for(int i = 0; i < 100; i=i+1) begin
            out_different[i] = in[(i+1)%100]^in[i];
        end
    end
endmodule