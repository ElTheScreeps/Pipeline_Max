module P1(clk, client_val, client_data, A, B);

parameter data_width = 8;

input                       clk;
input                       client_val;
input      [data_width-1:0] client_data;
output reg [data_width-1:0] A;
output reg [data_width-1:0] B;

always @(posedge clk) 
begin
    if (client_val) begin
        A <= client_data [data_width-1:4];
        B <= client_data [3:0];
    end
end

endmodule