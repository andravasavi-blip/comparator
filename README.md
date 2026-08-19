# 4-bit Comparator using Verilog

## Overview

This project implements a 4-bit Comparator using Verilog HDL.

A comparator is a combinational circuit used to compare two binary numbers and determine whether one number is greater than, equal to, or less than the other.

## Inputs

- `A` – 4-bit binary input
- `B` – 4-bit binary input

## Outputs

- `A_greater_B` – HIGH when A > B
- `A_equal_B` – HIGH when A = B
- `A_less_B` – HIGH when A < B

## Working

The circuit compares the two 4-bit inputs.

If A is greater than B:

`A_greater_B = 1`

If A is equal to B:

`A_equal_B = 1`

If A is less than B:

`A_less_B = 1`

Only one output is HIGH at a time.

## Example

A = 1001 (9)
B = 0101 (5)

Therefore:

A > B

So:

A_greater_B = 1

## Files

- `comparator.v` – Verilog design
- `comparator_tb.v` – Testbench
- `README.md` – Project documentation
- `simulation_result.png` – Simulation waveform

## Software Used

- Icarus Verilog
- ModelSim / Vivado
- GTKWave

## How to Run

### Compile

```bash
iverilog -o comparator comparator.v comparator_tb.v