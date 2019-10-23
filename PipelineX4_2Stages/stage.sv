module stage (output [N-1:0]res, input [N-1:0]num, input clk);

  parameter N=8;
  reg [N-1:0]in_data;
  per2 p1 (res,in_data);

  always @ ( posedge clk ) begin
    in_data = num;
  end

endmodule
