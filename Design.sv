// Code your design here
module reg_n #(parameter WIDTH=8) (
  input logic clk, rst,
  input logic [WIDTH-1:0] D;
  output logic [WIDTH-1:0] q
);
  always_ff@(posedge clk ) begin : blockName
    if (rst) q <=0;
    else q <=d;
    
  end
endmodule
