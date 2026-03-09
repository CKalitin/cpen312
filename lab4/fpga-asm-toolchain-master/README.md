# 8051 Assembler Toolchain

A VS Code development environment for programming the CV-8052 soft processor on Terasic DE series FPGA boards in 8051 assembly.

Serves as a drop-in replacement for [CrossIDE](https://people.ece.ubc.ca/jesusc/CrossIDE.zip) for CPEN 312 at UBC.


## Getting Started

**Requirements:**
- [VS Code](https://code.visualstudio.com/) (duh)
- [Quartus Prime](https://www.altera.com/products/development-tools/quartus) (for flashing via `quartus_stp.exe`)

**Reference:**
- [A51 Assembler Manual](Call51/Doc/a51.pdf)


## Build Tasks

Pre-configured VS Code tasks automate the assembly and flashing workflow:

| Task | Function |
|-|-|
| **Build & Flash** | Runs `a51` to assemble, then `quartus_stp` to flash via JTAG. Default build task –⁠ <kbd>Ctrl</kbd><kbd>Shift</kbd><kbd>B</kbd> |
| **Assemble (a51)** | Assembles `.asm` source to `.hex` and `.lst`. |
| **Flash via JTAG** | Executes `Load_Script.tcl` to program the soft-processor over USB-Blaster. |
| **Clean** | Removes generated `.hex` and `.lst` files. |

The flashing task requires the `QUARTUS_ROOTDIR` environment variable set by the Quartus Prime installer. If it's not set, configure it manually.


## Credits

This toolchain uses the **Call51** cross-compiler and assembler by Jesus Calvino-Fraga.

See [Call51/COPYING.txt](Call51/COPYING.txt) for the complete GPL v2 license text.
