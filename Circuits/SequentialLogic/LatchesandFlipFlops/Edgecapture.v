module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg[31:0] outline;
    reg[31:0] prein;
    always @(posedge clk) begin
        prein <= in;
    end
    always @(posedge clk) begin
        if(reset) 
            outline <= 32'b0;
        else
            outline <= outline | prein & ~in;
    end
    assign out = outline;
endmodule