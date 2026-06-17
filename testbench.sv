// Code your testbench here
// or browse Examples
module tb_reg_n;
  parameter WIDTH TB #8
  logic clk=0;
  logic rst=0;
  logic [7:0] d_tester, q_tester;
  
  reg_n #(.WIDTH(8)dut (
    .clk(clk)
    .rst(rst)
    .d(d_test),
    .q(q_test)
  );
          
  always #5 clk = ~clk;
  
  initial begin
    $dumpfile("wale.vcd");
    $dumpvars(0, tb_reg_on);
    rst=1; d_test = 8'hAA: #10;
    rst=0; #10;
    $finish;
  end
endmodule
