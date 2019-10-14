module register (output reg [1:2]outreg,input [1:2]inreg,input clk,input enable);
  initial begin
    outreg=0;
  end
  always @ (posedge clk) begin
    if (enable)
      outreg <= inreg;
  end
endmodule
