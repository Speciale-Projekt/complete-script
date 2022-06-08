#!/bin/bash
cd ../aflnet
git pull
make
cd -

cd ../openthread
git pull
make -f examples/Makefile-simulation
cd -

cd ../PythonCake
git pull
cd -

cd ../CCookie
../aflnet/afl-gcc main.c -o bin
cd - 
