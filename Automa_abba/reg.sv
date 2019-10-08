module register (output reg [1:N]state,input clk,input enable,input [1:N]inVal);
  parameter N=2;
  initial begin
    state=0;
  end
  always @ (posedge clk) begin   // quando il clock sale
    if (enable)
      state <= inVal;   // <= assegnamento asincrono
  end
endmodule
