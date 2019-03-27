#!/bin/bash

DOW=$(date +%Y%m%d)
arr_size=

for i in {1..10}
do
   ./omp_mergesort 1073741824 2 >> omp-sections-2-32.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 4 >> omp-sections-4-32.txt && wait
done


for i in {1..10}
do
   ./omp_mergesort 1073741824 32 >> omp-sections-32-32.txt && wait
done