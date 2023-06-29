module PIPELINE_MAX_TB();

parameter data_width = 8;

reg                   clk;
reg                   rst_n;
reg                   client_val;
reg                   max_rdy;
reg  [data_width-1:0] client_data;

wire [data_width-1:0] max_data;
wire                  client_rdy;
wire                  max_val;

always #5 clk = ~clk;

initial begin
clk         = 0;
rst_n       = 0;
client_val  = 1;
max_rdy     = 1;
client_data = 8'b11111010;
repeat(1) @(posedge clk);
rst_n       = 1;
repeat(4) @(posedge clk);
client_val  = 0;
max_rdy     = 0;
repeat(10) @(posedge clk);
end

PIPELINE_MAX T(.clk, .rst_n, .client_val, .max_rdy, .client_data, .max_data, .client_rdy, .max_val);
    
endmodule