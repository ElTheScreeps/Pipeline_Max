module P2(clk, max_rdy, A, B, result);

parameter data_width = 8;

input                   clk;
input                   max_rdy;
input  [data_width-1:0] A;
input  [data_width-1:0] B;
inout  [data_width-1:0] result;

reg [data_width-1:0] R;

assign result = R;

always @(posedge clk) 
begin
    if (max_rdy) begin
        if (A > B) R <= A;
        else if (A == B) R <= 8'd0;
        else if (A < B) R <= B;
    end
end

endmodule