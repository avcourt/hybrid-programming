#!/bin/bash

DOW=$(date +%Y%m%d)
arr_size=

for i in {1..10}
do
   ./omp_mergesort 1073741824 2 >> omp-sections-2-128.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 4 >> omp-sections-4-128.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 8 >> omp-sections-8-128.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 16 >> omp-sections-16-128.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 32 >> omp-sections-32-128.txt && wait
done