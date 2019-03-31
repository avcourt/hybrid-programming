#!/bin/bash

DOW=$(date +%Y%m%d)
arr_size=



for i in {1..10}
do
   ./omp_mergesort 1073741824 2 >> omp-tasks-2-64.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 4 >> omp-tasks-4-64.txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 8 >> omp-tasks-8-64.txt && wait
done

