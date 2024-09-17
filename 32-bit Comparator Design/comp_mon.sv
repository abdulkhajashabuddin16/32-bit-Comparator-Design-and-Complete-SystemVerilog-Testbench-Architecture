class comp_mon;
  virtual comp_int vif;
  comp_tx tx;

  task run();
    vif = comp_cfg::vif;
    
    forever begin
      tx = new();
      tx.a = vif.a;
      tx.b = vif.b;
      tx.eq = vif.eq;
      tx.lt = vif.lt;
      tx.gt = vif.gt;
      comp_cfg::mon2ckr.put(tx);  
      comp_cfg::mon2cov.put(tx);  
      @(posedge vif.a or posedge vif.b);
    end
    
  endtask
  
endclass