# 32-bit-Comparator-Design-and-Complete-SystemVerilog-Testbench-Architecture

## Overview

The 32-bit comparator is a digital circuit designed to compare two 32-bit binary numbers. It provides three outputs to indicate the relationship between the two numbers:

- **A > B**: High (1) if `A` is greater than `B`.
- **A = B**: High (1) if `A` is equal to `B`.
- **A < B**: High (1) if `A` is less than `B`.

This repository contains the design and verification environment for the 32-bit comparator, implemented in SystemVerilog and Verilog.

## Files

Description of each file in the repository:
<br>
-Design Files
<br>
- **`comp_32b.v`**: Verilog implementation of the 32-bit comparator.
<br>
-Testbench and Verification Files
<br>
- **`top.sv`**: Top-level module that integrates the 32-bit comparator and the testbench.
- **`comp_tb.sv`**: Testbench module for the 32-bit comparator.
- **`comp_int.sv`**: Interface definition for the 32-bit comparator.
- **`comp_env.sv`**: Environment setup for the comparator testbench.
- **`comp_cov.sv`**: Coverage analysis module for the comparator.
- **`comp_ckr.sv`**: Checker module to validate the comparator functionality.
- **`comp_mon.sv`**: Monitor module to observe and report the comparator's behavior.
- **`comp_bfm.sv`**: Bus Functional Model (BFM) for generating and managing transactions.
- **`comp_gen.sv`**: Random test case generator for the comparator.
- **`comp_cfg.sv`**: Configuration class for setting up the test environment.
- **`comp_tx.sv`**: Transaction class for handling and generating input values.

<br>

# Input Vectors & Result of 32 - Bit Comparator:
![image](https://github.com/user-attachments/assets/b6878108-52f0-48eb-8f9e-def9cd013856)

<br>
# 
![image](https://github.com/user-attachments/assets/87101c13-cb5c-4984-8df0-772a668d6794)
