# DSD Coursework

Luigi Rinaldi and Diego Van Overberghe

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

- With initial `onchipMem` size 20480 bits:

  - When trying to add the `gcvt` to calcuate the delay, the script tell us that the program no longer fits on the onchip mem and is overflowing by 20k+.

  - When running the tests, we get results for the first test case but not for the other two, so it would seem that there is not enough memory to run the `generateVector` function which commits the vector to memory.
- Doubling `onchipMem` to 40,960 bits, we are able to do the first and second test cases.
  - Total Memory Bits: 374,016 / 4,065,280 (9%), others remained identical.
  - For the third test case, we can see that the `sumVector` function is run successfully, but does not return the result back to main.
  - `gcvt` is no longer working and the compiler says the function is not defined
- We tried pushing `onchipMem` to 409,600 and the design no longer fitted on the board. Doubling was not enough, utilisation now 702,080 / 4,065,280 (17%).
- Going to 245,760 bits, we have 2,012,672 / 4,065,280 (50%) memory bit usage. This is still not enough to run the third test.
- Maximising the `onchipMem` at 390,000 with 3,166,720 / 4,065,280 (78%), we are still not able to run test 3. Doing some back of the napkin calculations, we determine that the third test requires `216000 * 32 / 8` bytes of memory, which amounts to 1 MB. The maximum available within board is about 4e9 / 8 ≈ 0.5 MB
- We try reducing N to 90k and are able to run the program. Using the `nios2-elf-size` command, we determine that the program is 14kB in size which leaves ~375kB of memory available, which corresponds to a value of N around 90k.

- Different vector sizes only marginally change the size of the `.elf`, we explain this by considering that the test cases with larger numbers simply require more space to store the test number. For example, test one requires 14036 B, while replacing N = 52 with N = 5200 only increases the size to 14064 B, which corresponds to the weight of storing the larger N.
- By casting the difference of the timers to float, we are able to get `gvct` to work, test cases 1 runs in 1 "tick" = 0.85ms, test 2 in 34ms and task 3 does not run with N=90k due to the available memory being smaller due to the loading of `gvct`. With N=40k we get 1.176s. The timing is based on an average of 100 executions.
- Comparing with a Python implementation, we see a small difference the integer part of our calculated value. We put this down to innacuracies of single precision float. By changing all the floats to double, we are able to get exactly the same result as the Python script.
- We would expect that reducing the `onchipMem` would not effect the speed of the computation. Reducing the size to 200kB instead of 390kB, we get an execution time of 0.85ms for test 1 and 35ms for test 2. These numbers are essentially the same and so we seem to be able to validate our hypothesis that the memory size has little to no bearing on the latency.
- The little difference seen on test 2 (1ms) could be attributed to ...