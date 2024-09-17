`include "comp_32b.v"
`include "comp_cfg.sv"
`include "comp_tx.sv"
`include "comp_gen.sv"
`include "comp_bfm.sv"
`include "comp_mon.sv"
`include "comp_ckr.sv"
`include "comp_cov.sv"
`include "comp_env.sv"
`include "comp_int.sv"
`include "comp_tb.sv"

module top;
  logic [31:0] a, b;
  logic [0:0] eq, lt, gt;
  
  comp_int inf();

  initial begin
    comp_cfg::vif = inf;
  end

  comp_32b dut (
    .a(inf.a),
    .b(inf.b),
    .eq(inf.eq),
    .lt(inf.lt),
    .gt(inf.gt)
  );

  comp_tb tb();

  initial begin
    repeat (20) begin
      inf.a = $random;
      inf.b = $random;
      #10;
       inf.a = 32'h12345678; 
       inf.b = 32'h12345678; 
       #10;
    end
    $finish; 
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, dut.a, dut.b, dut.eq, dut.lt, dut.gt);
  end

endmodule
