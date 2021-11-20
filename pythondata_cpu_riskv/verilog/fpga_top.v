module top(input clk, input rst, output led);

cpu cpu (rst, clk, led);

endmodule
