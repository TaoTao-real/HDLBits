module top_module (
    input clk,
    input slowena,
    input reset,
    output [3:0] q);
    always @(posedge clk) begin
        if(reset) begin
            q = 0;
        end else begin
            if(slowena) begin
                q = (q+4'd1)%10;
            end 
        end
    end
endmodule