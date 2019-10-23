module per4 (output [7:0]out,input [7:0]in,input clk); // per4 da 4dt

  wire [7:0]bridge;
  reg [7:0]in_data;
  per2 p1(bridge,in);
  per2 p2(out,bridge);

  always @ ( posedge clk ) begin
    in_data=in;
  end

endmodule
