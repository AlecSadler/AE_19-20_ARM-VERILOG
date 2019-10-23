module per4farm (output [7:0]res1,input [7:0]num1,input clk);

  reg [7:0]in_data1;

  per4 w1 (res1,in_data1,clk);
  per4 w2 (res1,in_data1,clk);

  always @ ( posedge clk ) begin
    in_data1 = num1;
  end

endmodule
