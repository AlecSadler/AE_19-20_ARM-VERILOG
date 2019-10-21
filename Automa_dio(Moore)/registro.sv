module register (output reg [1:2]outreg, input [1:2]inreg, input en, input clk);

  initial begin
    outreg=2'b00;
  end

  always @ ( posedge clk ) begin
      if (en)
        outreg <= inreg;
  end

endmodule
