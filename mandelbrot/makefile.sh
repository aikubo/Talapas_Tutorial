#! /bin/bash
#
gfortran -c -Wall -fopenmp mandelbrot_openmp.f90
if [ $? -ne 0 ]; then
  echo "Compile error."
  exit
fi
#
gfortran -fopenmp mandelbrot_openmp.o -o mandelbrot.exe
if [ $? -ne 0 ]; then
  echo "Load error."
  exit
fi
rm mandelbrot_openmp.o

echo "Normal end of execution."

