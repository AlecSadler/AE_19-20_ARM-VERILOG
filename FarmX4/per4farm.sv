module per4farm (output [7:0]res1,output [7:0]res2,input [7:0]num1,input [7:0]num2,input clk);

  reg [7:0]in_data1;
  reg [7:0]in_data2;

  per4 w1 (res1,in_data1,clk);
  per4 w2 (res2,in_data2,clk);

  always @ ( posedge clk ) begin
    in_data1 = num1;
    in_data2 = num2;
  end

endmodule
