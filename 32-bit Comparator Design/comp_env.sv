class comp_env;
  comp_gen gen = new();
  comp_bfm bfm = new();
  comp_mon mon = new();
  comp_ckr ckr = new();
  comp_cov cov = new();

  virtual comp_int vif;

  task run();
    
    vif = comp_cfg::vif;
    
    fork
      gen.run();
      bfm.run();
      mon.run();
      ckr.run();
      cov.run();
    join
    
  endtask
  
endclass