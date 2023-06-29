module P3(clk, rst_n, max_val, result, max_data);

parameter data_width = 8;

input                        clk;
input                        rst_n;
input                        max_val;
input      [data_width-1:0]  result;
output reg [data_width- 1:0] max_data;

always @(posedge clk or negedge rst_n) 
begin
    if (~rst_n) max_data <= 8'b0;
    else if (max_val) max_data <= result; 
end
endmodule