module sigma (output new_state, input state, input x);

  assign new_state= (!state & x) | (state & !x);

endmodule
