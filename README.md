# 2-Bit Magnitude Comparator using Verilog

## Overview

This project implements a **2-bit Magnitude Comparator** using Verilog HDL.

A comparator compares two binary numbers (`A` and `B`) and produces one of three outputs:

- **A_greater** = 1 when A > B
- **A_equal** = 1 when A = B
- **A_less** = 1 when A < B

Only one output is HIGH at any time.

---

## Truth Table

| A | B | A>B | A=B | A<B |
|---|---|-----|-----|-----|
|00|00|0|1|0|
|01|10|0|0|1|
|11|01|1|0|0|
|10|10|0|1|0|
|01|00|1|0|0|

---

## Files

- `comparator2bit.v` – Verilog design
- `comparator2bit_tb.v` – Testbench
- `README.md` – Project documentation
- `simulation_result.png` – Simulation waveform

---

## Software Used

- Icarus Verilog
- ModelSim
- Xilinx Vivado
- GTKWave (optional)

---

## How to Run

### Compile

```bash
iverilog -o comparator comparator2bit.v comparator2bit_tb.v
```

### Run

```bash
vvp comparator
```

### View Waveform

```bash
gtkwave dump.vcd
```

---

## Expected Results

| A | B | A>B | A=B | A<B |
|---|---|-----|-----|-----|
|00|00|0|1|0|
|01|10|0|0|1|
|11|01|1|0|0|
|10|10|0|1|0|
|01|00|1|0|0|

---

## Applications

- Arithmetic Logic Units (ALUs)
- Digital processors
- Address comparison
- Sorting circuits
- Decision-making logic

---

## Author

Your Name