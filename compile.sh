#!/bin/bash
clear
set -e
source filedata.txt
export env_filename=$filename
mkdir -p build && cd build
cmake ..  &> /dev/null
make  -B
mkdir -p ../outputs

./$filename < ../inputs/test_input  > ../outputs/test_output
./$filename < ../inputs/small_input > ../outputs/small_output
./$filename < ../inputs/large_input > ../outputs/large_output


# set -e
#   Any subsequent(*) commands failing makes the shell script to exit.

# source filedata.txt
#   Reads variables from filedata.txt

# mkdir -p
#   creates a folder only if it doesn't exist

# &> /dev/null
#   Suppreses output

# <	reads input from a file
# >	writes output to a file


#
# Author:      Eduardo Cáceres de la Calle
# Date:        30/04/2017
#
# Code initially written to solve Challenge 2 of Tuenti Challenge 7.
#
#
