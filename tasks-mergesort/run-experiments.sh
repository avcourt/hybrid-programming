#!/bin/bash

thresh=105       	# threshold at which sort reverts to insertion
arr_size=$((2**10)) # num of integer elements
num_tests=6         # num of different tests (threads = [2, 4, ... , 2**(num_tests - 1])
num_runs=10         # number of runs/thread count
num_threads=1       # init to 1

for (( i = 0; i < ${num_tests} * ${num_runs}; i++ ))
do
    if ! ((i % ${num_runs})) && ((i > 0)); then
       num_threads=$((num_threads * 2))
    fi
       ./omp_mergesort ${arr_size} ${thresh} ${num_threads} >> omp-tasks-${num_threads}-${thresh}.txt && wait
done
