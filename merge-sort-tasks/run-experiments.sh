#!/bin/bash

DOW=$(date +%Y%m%d)
arr_size=



for i in {1..10}
do
   ./omp_mergesort 1073741824 2 >> omp-tasks-2-256.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 4 >> omp-tasks-4-256.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 8 >> omp-tasks-8-256.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 16 >> omp-tasks-16-256.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 32 >> omp-tasks-32-256.txt && wait
done

