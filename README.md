# RISC-V Toolchain Assignment — Toolchain Setup, Compilation & Simulation

## 📚 Repository Contents
| File Name                | Description                                          |
|--------------------------|-----------------------------------------------------|
| `mytest.c`                | Simple test program (addition operation)             |
| `unique_test.c`           | Custom unique test case (multiplication & subtraction)|
| `mytest.elf`              | Compiled ELF file of `mytest.c`                     |
| `unique_test.elf`         | Compiled ELF file of `unique_test.c`                |
| `mytest.asm`              | Assembly dump of `mytest.elf` (RISC-V instructions) |
| `unique_test.asm`         | Assembly dump of `unique_test.elf`                  |
| `mytest_output.png`       | Screenshot of QEMU running `mytest.elf`              |
| `unique_test_output.png`  | Screenshot of QEMU running `unique_test.elf`         |

---

## 🛠️ Toolchain & Environment
- Operating System: **Windows 11 (WSL - Ubuntu 20.04)**
- RISC-V GNU Toolchain (compiled locally for `rv32i`)
- Simulator: **QEMU (riscv32)**

---

## 📝 Task Breakdown<img width="1015" height="278" alt="output" src="https://github.com/user-attachments/assets/ae785666-0864-4f97-a564-1ece077b7306" />


### ✅ Task 1: Toolchain Installation
The RISC-V GNU Toolchain was cloned and built from source targeting `rv32i` architecture using:

### ✅ Task 2: Simple Test Program
A basic addition program (`mytest.c`) was compiled into `mytest.elf`. The ELF was dumped into assembly using `riscv32-unknown-elf-objdump`.

### ✅ Task 3: Unique Test Case
A custom test (`unique_test.c`) involving multiplication and subtraction was created, compiled, and its assembly dump was generated similarly.

### ✅ Task 4: Program Execution using QEMU
Due to **build issues with the Proxy Kernel (SPARK / pk)**, I was unable to simulate ELF files using Spike+pk.
However, I validated the execution of the compiled ELF files using **QEMU (riscv32 user-mode simulation)** to demonstrate correct program behavior.

Execution commands:

Screenshots of program execution are attached in the repository.

---

## ⚠️ Note on SPARK (pk):
Despite multiple attempts to build **Proxy Kernel (pk)**, the compilation failed due to architecture limitations and missing multilib support.  
Given time constraints, **QEMU** was used as a valid alternative for RISC-V ELF execution.


## 📄 Conclusion
All tasks regarding toolchain setup, test case compilation, assembly analysis, and program execution have been completed.  
Execution was validated using QEMU as a substitute for SPARK, ensuring functional correctness of compiled RISC-V programs.

---

