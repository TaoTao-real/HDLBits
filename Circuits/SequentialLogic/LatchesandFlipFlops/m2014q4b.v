module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output q);
    always @(posedge clk, posedge ar) begin
        if(ar) begin
            q <= 0;
        end else begin
            q <= d;
        end
    end
endmodule