#!/bin/bash

DOW=$(date +%Y%m%d)
arr_size=

for i in {1..10}
do
   ./omp_mergesort 1073741824 2 >> omp-sections-2-1024.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 4 >> omp-sections-4-1024.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 8 >> omp-sections-8-1024.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 16 >> omp-sections-16-1024.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 32 >> omp-sections-32-1024.txt && wait
done