#!/bin/bash

thresh=1024
arr_size=1073741824
num_runs=10
num_threads=1


for (( i = 0; i < $num_runs; i++ )) 
do
   ./omp_mergesort $arr_size $num_threads >> omp-tasks-$num_threads-$thresh.txt && wait
done

num_threads=$((num_threads * 2))
for (( i = 0; i < $num_runs; i++ )) 
do
   ./omp_mergesort $arr_size $num_threads >> omp-tasks-$num_threads-$thresh.txt && wait
done

num_threads=$((num_threads * 2))
for (( i = 0; i < $num_runs; i++ )) 
do
   ./omp_mergesort $arr_size $num_threads >> omp-tasks-$num_threads-$thresh.txt && wait
done

num_threads=$((num_threads * 2))
for (( i = 0; i < $num_runs; i++ )) 
do
   ./omp_mergesort $arr_size $num_threads >> omp-tasks-$num_threads-$thresh.txt && wait
done

num_threads=$((num_threads * 2))
for (( i = 0; i < $num_runs; i++ )) 
do
   ./omp_mergesort $arr_size $num_threads >> omp-tasks-$num_threads-$thresh.txt && wait
done
