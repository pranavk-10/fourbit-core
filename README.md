# 🧠 4-Bit Processor – Verilog RTL Project

This project implements a simple 4-bit processor using Verilog HDL. It includes a custom instruction set, datapath design, control logic, and simulation testbenches.

## 📌 Features

- 4-bit ALU (Arithmetic Logic Unit)
- Register File
- Program Counter (PC)
- Instruction Decoder
- Control Unit
- Memory (ROM/RAM)
- Custom Instruction Set
- Testbench for simulation and validation

## 🗂️ Module Breakdown

| Module            | Description                            |
|-------------------|----------------------------------------|
| `alu.v`           | Handles basic arithmetic & logic ops   |
| `register_file.v` | Stores intermediate data               |
| `control_unit.v`  | Decodes instructions into control signals |
| `program_counter.v` | Increments & controls instruction flow |
| `instruction_memory.v` | Holds predefined instructions    |
| `data_memory.v`   | Stores processor data                  |
| `top_module.v`    | Integrates all modules                 |
| `tb_top.v`        | Testbench for the full processor       |

## ⚙️ Instruction Set Example

| Opcode | Instruction | Operation        |
|--------|-------------|------------------|
| 0001   | ADD         | R1 = R2 + R3     |
| 0010   | SUB         | R1 = R2 - R3     |
| 0011   | AND         | R1 = R2 & R3     |
| 0100   | OR          | R1 = R2 | R3     |
| ...    | LOAD/STORE  | Memory operations|

*Instruction format can be customized.*
