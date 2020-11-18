module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire[400:0] cout_temp;
    genvar i;
    assign cout_temp[0] = cin;
        generate 
            for(i = 0; i < 100; i=i+1) begin: bcd
                bcd_fadd inst_bcd_fadd(a[4*(i+1)-1:4*i], b[4*(i+1)-1:4*i], cout_temp[4*i], cout_temp[4*(i+1)], sum[4*(i+1)-1:4*i]);
            end
        endgenerate
    assign cout = cout_temp[400];
endmodule
