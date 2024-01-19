# DSD Coursework

## Task 1

- Installed Quartus Lite 20.1 using [this guide](https://mil.ufl.edu/3701/docs/quartus/quartus22.1_installation.pdf).
  - Needed to install a gtk-type package, no issue via pacman, fiddled with locales to activate `en_US` although this was not required, added to path by adding in `.bashrc` 

- Installed Eclipse using [this guide](https://www.terasic.com.tw/wiki/Getting_Start_Install_Eclipse_IDE_into_Nios_EDS).
  - Missing gtk package, installed via pacman
  - Issue related to missing definition of a freetype function, resolution is to disable the default quartus bundled version of freetype at `~/intelFPGA_lite/20.1/quartus/linux64/jre64/lib/amd64/libfreetypeso.6`.
- Blasted to board, no issues, but would not upload with `nios2-download-elf`, saying device not responding. After trying to use Eclipse IDE to run as NIOS II hardware, I see the System ID error as mentioned in the documentation. I realised my top level wires were overlapping and not actually connected. After properly connecting them, I recompiled, blasted and was able to run `nios2-download-elf` and see `Hello from NIOS II!` on the terminal.
- Finally, I created an alias in my `.bashrc` to invoke `nios2_command_shell.sh` with `shell`. Then tested compiling and flashing the program directly from VSCode using `make download-elf`. After an initial issue with a wrong timestamp‽ which required me to recompile the entire project, I was able to successfully flash without using the Eclipse IDE. Also tested changing the program to ensure it was not using a cached result.

Using the Compilation Report and looking into the fitter section, we see the following utilisation:

- Total Logic Elements: 1 365 out of 32 070 (4%)
- Total Memory Bits: 210 048 out of 4 065 280 (5%)
- Total DSP Blocks: 0 out of 87 (0%)
- Total PLLs: 0 out of 6 (0%)

## Task 2

To begin, we copy the program from the spec pdf. The code to divide by 1024 is simplified by casting the float to an int, then shifting right 10.

When trying to add the `gcvt` to calcuate the delay, the script tell us that the program no longer fits on the onchip mem and is overflowing by 20k+.

When running the tests, we get results for the first test case but not for the other two, so it would seem that there is not enough memory to run the `generateVector` function which commits the vector to memory.