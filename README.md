 1101 Sequence Detector - FSM in Verilog

This project implements a finite state machine (FSM) in Verilog that detects the binary sequence `1101` from a serial input stream. When the FSM successfully detects the sequence, it asserts an output signal (`out = 1`) for one clock cycle.

##  Module Description

- **Inputs:**
  - `clk`: Clock signal
  - `rst`: Asynchronous reset
  - `initial_bit`: Serial input bit stream

- **Output:**
  - `out`: Goes high when the sequence `1101` is detected

- **States:**
  - `s0`: Start state
  - `s1`: Detected first `1`
  - `s2`: Detected `11`
  - `s3`: Detected `110`
  - `s4`: Sequence `1101` detected (output asserted)

## Files

- `fsm.v` – Verilog module for FSM
- `tb_fsm.v` – Testbench to simulate sequence input
- `README.md` – Project overview

## How it Works

The FSM transitions through states as follows:

s0 --1--> s1 --1--> s2 --0--> s3 --1--> s4

- `out = 1` only when entering `s4`
- FSM resets back to `s0` after detection

## Simulation

Input Sequence:
1 1 0 1
results:
0,0,1,0,0
5000,1,1,0,0
10000,0,0,0,0
15000,1,0,0,0
20000,0,0,1,0
25000,1,0,1,0
30000,0,0,1,0
35000,1,0,1,0
40000,0,0,0,0
45000,1,0,0,0
50000,0,0,1,0
55000,1,0,1,1
60000,0,0,0,1
65000,1,0,0,0
70000,0,0,0,0
75000,1,0,0,

Edit

Output:
