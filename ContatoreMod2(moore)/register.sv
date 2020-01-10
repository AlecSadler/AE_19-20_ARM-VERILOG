module register (output reg new_state, input inState, input clk, input enable);

  initial begin
    new_state = 0;
  end

  always @ ( posedge clk ) begin

    if (enable)
      begin
        new_state <= inState;
      end

  end

endmodule
