class comp_bfm;
  
  virtual comp_int vif;
  comp_tx tx;

  task run();
    vif = comp_cfg::vif;
    
    forever begin
      comp_cfg::gen2bfm.get(tx); 
      drive();
    end
    
  endtask

  task drive();
    vif.a <= tx.a;
    vif.b <= tx.b;
  endtask
  
endclass
