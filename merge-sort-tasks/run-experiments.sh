#!/bin/bash

DOW=$(date +%Y%m%d)
arr_size=

for i in {1..10}
do
   ./omp_mergesort 1073741824 16 >> "$DOW-16".txt && wait
done

for i in {1..10}
do
   ./omp_mergesort 1073741824 8 >> "$DOW-8".txt && wait
done