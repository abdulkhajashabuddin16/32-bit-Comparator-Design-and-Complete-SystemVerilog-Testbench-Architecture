class comp_gen;
  
  comp_tx tx;
  virtual comp_int vif;

  task run();
    vif = comp_cfg::vif;
    for (int i = 0; i < 10; i++) begin
      tx = new();
      if (!tx.randomize()) begin
        $display("Randomization failed at iteration %0d", i);
      end
      comp_cfg::gen2bfm.put(tx); 
    end
  endtask
  
endclass
