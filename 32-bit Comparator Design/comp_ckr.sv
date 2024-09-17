class comp_ckr;
  comp_tx tx;

  task run();
    
    forever begin
      comp_cfg::mon2ckr.get(tx);
      
      if ((tx.a == tx.b && tx.eq == 1 && tx.lt == 0 && tx.gt == 0) || 
          (tx.a < tx.b && tx.eq == 0 && tx.lt == 1 && tx.gt == 0) || 
          (tx.a > tx.b && tx.eq == 0 && tx.lt == 0 && tx.gt == 1)) begin
        $display("PASS: a=%h, b=%h, eq=%b, lt=%b, gt=%b", tx.a, tx.b, tx.eq, tx.lt, tx.gt);
      end 
      
      else begin
        $display("FAIL: a=%h, b=%h, eq=%b, lt=%b, gt=%b", tx.a, tx.b, tx.eq, tx.lt, tx.gt);
      end
      
    end
    
  endtask
  
endclass