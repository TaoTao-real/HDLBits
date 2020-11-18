module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );
    always @(*) begin
        for(int i = 0; i < 100; i=i+1) begin
            if(i == 0) begin
            	sum[i] = a[i]^b[i]^cin;
                cout[i] = a[i]&b[i]|a[i]&cin|b[i]&cin;
            end else begin
                sum[i] = a[i]^b[i]^cout[i-1];
                cout[i] = a[i]&b[i]|a[i]&cout[i-1]|b[i]&cout[i-1];
            end
        end
    end
endmodule
