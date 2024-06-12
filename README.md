# SLIDE-x-D001-Artix-7-Recipe
This repository contains the results of executing the SLIDE-x framework with the Bambu HLS tool for the Artix-7 FPGA (200 MHz) and the Recipe benchmark. 

The folder contains SLIDE-x-RES results (i.e., code profiling, code characteristics, Bambu area and timing metrics along with input C headers and Verilog synthesis files) extracted using the SLIDE-x framework available at the following link: https://github.com/hepsycode/SLIDE-x.

1. **SLIDE-x-RES**: Result datasets generated during the Profiling/Simulation activities;
    - xc7a100t-1csg324-Artix-7 folder with 2 subfolders:
      - RECIPE_DECIMAL: Recipe benchmark results with datatypes Float and Double for the following functions: bs, bsort100, cnt, fdct, fibcall, insertionsort, lud, matrix_mult, select, shell_sort;
      - RECIPE_INT: Recipe benchmark results with datatypes int8. int16, int32, int64 for the following functions: bs, bsort100, cnt, fdct, fft, fibcall, insertionsort, lud, matrix_mult, park_miller, prime, select, shell_sort, sqrt;
