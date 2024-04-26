# Optimized AXI-Stream Implementation

This final project update contains the optimized AXI-Stream implementation for a hardware overlay.

The AXI-Stream subfolder contains three directories:
- `overlay_files`: Contains Jupyter Notebook files (for each AES mode) and the necessary hardware overlay files needed to run the IP on the PYNQ board. This also contains a Notebook to generate a Pareto graph based on the optimization synthesis results.
- `vitis`: Contains the source Vitis HLS C files and testbench files. This also contains the hardware register map file, simulation logs, and synthesis summary for reference.
- `vivado`: Contains screenshots of the Vivado block design, chip floorplanning, and TCL scripts for generating the respective block designs.

All Vitis source code has base optimizations added to pipeline various loops with the lowest possible Initialization Interval value to resolve Initialization Interval Violations and Timing Violations that arise when just running the raw HLS C code. This optimized Vitis code also has additional optimizations detailed in the table below:

### Compounding Optimizations

|    Optimizations   	| Latency (cycles) 	| Latency (ns) 	| BRAM 	| DSP 	|  FF  	|  LUT  	| URAM 	|
|:------------------:	|:----------------:	|:------------:	|:----:	|:---:	|:----:	|:-----:	|:----:	|
|      Baseline      	|       11828      	|   1.18E+05   	|   9  	|  0  	| 1785 	|  7806 	|   0  	|
|      expandKey     	|       10386      	|   1.04E+05   	|   9  	|  0  	| 4405 	| 10751 	|   0  	|
|      subBytes      	|       10334      	|   1.03E+05   	|   9  	|  0  	| 4555 	| 11235 	|   0  	|
|   createRoundKey   	|       9753       	|   9.75E+04   	|   9  	|  0  	| 4548 	| 11516 	|   0  	|
|      aes_main      	|       8665       	|   8.67E+04   	|   9  	|  0  	| 4811 	| 12256 	|   0  	|
|     invSubBytes    	|       8595       	|   8.60E+04   	|   8  	|  0  	| 4929 	| 12711 	|   0  	|
|    invShiftRows    	|       8057       	|    8.06E04   	|   8  	|  0  	| 4990 	| 12703 	|   0  	|
| shiftRow/shiftRows 	|       8025       	|   8.03E+04   	|   8  	|  0  	| 5003 	| 12770 	|   0  	|
|    invMixColumns   	|       7973       	|   7.97E+04   	|   8  	|  0  	| 5018 	| 13011 	|   0  	|
|     aes_invMain    	|       7379       	|   7.38E+04   	|   9  	|  0  	| 5169 	| 13126 	|   0  	|

Each consecutive row of optimizations builds upon the previous optimizations. Since it's more important for encryption/decryption to be fast, reducing latency was prioritized in our hardware optimizations.

Below are more detailed explanations of what each optimization entails. Since the baseline optimization is a combination of automatic optimizations made by Vitis and HLS Pipelining to remove Initiation Interval violations, it has been omitted. Important to note is the addition of `LOOP_TRIPCOUNT` directives to each variable tripcount loop in the source code for `PERFORMANCE` directive optimizations and synthesis summary convenience.
- expandKey: Added `BIND_STORAGE` directives to make sbox, rsbox, and Rcon all 2 port ROMs. Also an array partition for the temporary array `t`, a performance directive for the first loop within the function, and a pipeline directive for the second loop.
- subBytes: Added a loop unroll directive.
- createRoundKey: Added a pipeline directive to the second loop within the function.
- aes_main: Added a performance directive with `target_ti=500`.
- invSubBytes: Added a loop unroll directive.
- invShiftRows: Added a loop unroll directive.
- shiftRow/shiftRows: Added loop pipelining and loop unrolling directives.
- invMixColumns: Modified the baseline pipelining to have a lower initiation interval value.
- aes_invMain: Added a performance directive with `target_ti=600`

## Vitis HLS Setup

Create a new Vitis project with the source files included under `./vitis/vitis_source` and the top level function `aes`. Add the testbench files included under `./vitis/vitis_test`. Select the correct hardware part (`xc7z020clg400-1`) with the `Vivado IP Flow Target`, and finish creating the Vitis project.

## Vitis Simulation

The AXI-Stream implementation has a dedicated testbench meant for testing AES encryption and decryption. Running the C Simulation will check the difference of the encryption/decryption output against a set of golden output data files to validate that the algorithm runs properly. These golden data files have also been validated against various online AES tools.

## Vitis Synthesis

As mentioned above, the optimized Vitis C code provided in this directory has all mentioned inline pragma directives. Running C Synthesis should succeed without error. After C Synthesis, export RTL for Vivado.

## Vivado

This implementation has a TCL script included to automatically generate a block design using the IP synthesized by Vitis.

After adding the IP under `Tools->Settings->IP->Repository`, run the respective TCL script to setup the block design (`Tools->Run TCL Script...`), create an HDL Wrapper for the source, and generate bitstream to create the `.bit` and `.hwh` hardware overlay files and the `.tcl` script. These have already been generated and provided under `./overlay_files` and `./vivado`, respectively, for your convenience.

## PYNQ Overlay

After uploading the hardware overlay files to the PYNQ board (either within the same directory as the Jupyter notebook being run or into the PYNQ-Z2 overlay folder), use the given Jupyter Notebook files under `./overlay_files` to test the IP. 

The Jupyter Notebook files have preconfigured plaintext and cipher key values as inputs to the IP (as well as the AES mode being used). These can be changed as long as the key size satisfies the respective AES mode and the plaintext size stays 16 characters.

