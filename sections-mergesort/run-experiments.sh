#!/bin/bash

thresh=16
arr_size=1073741824
num_runs=10
type="sections"
num_threads=64

for (( i = 0; i < $num_runs; i++ )) 
do
   ./omp_mergesort $arr_size $num_threads >> omp-$type-$num_threads-$thresh.txt && wait
done

