class comp_cov;
  comp_tx tx;

  covergroup comp_cg;
    eq_cover: coverpoint tx.eq {
      bins eq_one = {1};
      bins eq_zero = {0};
    }
    lt_cover: coverpoint tx.lt {
      bins lt_one = {1};
      bins lt_zero = {0};
    }
    gt_cover: coverpoint tx.gt {
      bins gt_one = {1};
      bins gt_zero = {0};
    }
    option.per_instance = 1;
  endgroup

  function new();
    this.comp_cg = new();
  endfunction

  task run();
    $display("cov");
    forever begin
      comp_cfg::mon2cov.get(tx);  
      comp_cg.sample();           
    end
  endtask
endclass
