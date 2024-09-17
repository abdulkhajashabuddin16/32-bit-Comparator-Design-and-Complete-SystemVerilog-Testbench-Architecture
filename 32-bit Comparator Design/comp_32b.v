module comp_32b(
  input [31:0] a, b,
  output reg[0:0] eq, lt, gt
);

  always_comb begin
    
      lt = 0;
      eq = 0;
      gt = 0;
    
    if (a < b) begin
      lt = 1;
    end
    
    else if (a == b) begin
      eq = 1;
    end
 
    else begin
      gt = 1;
    end
    
  end

endmodule