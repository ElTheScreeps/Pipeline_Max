module PIPELINE_MAX(clk, rst_n, client_val, max_rdy, client_data, max_data, client_rdy, max_val);

parameter data_width = 8;

input                    clk;
input                    rst_n;
input                    client_val;
input                    max_rdy;
input   [data_width-1:0] client_data;
output  [data_width-1:0] max_data;
output                   client_rdy;
output                   max_val;

reg [data_width-1:0] result;
reg [1:0]            count;
reg [data_width-1:0] A;
reg [data_width-1:0] B;

wire [data_width-1:0] a;
wire [data_width-1:0] b;
wire [data_width-1:0] r;

always @(posedge clk or negedge rst_n) 
begin
    if (~rst_n) count    <= 'b0;
    else if (max_rdy) count <= count + 1; 
end

assign max_val = (count == 2'b11) ? 1 : 0; 

P1 u1(.clk, .client_val, .client_data, .A(a), .B(b));
P2 u2(.clk, .max_rdy, .A(a), .B(b), .result(r));
P3 u3(.clk, .rst_n, .max_val, .result(r), .max_data);

endmodule