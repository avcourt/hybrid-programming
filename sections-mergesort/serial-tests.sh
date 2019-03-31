#!/bin/bash

thresh=16       # threshold at which sort reverts to insertion
arr_size=$((2**30)) # num of integer elements
num_tests=1         # num of different tests (threads = [2..2**(num_tests - 1])
num_runs=10         # number of runs/thread count

for (( i = 0; i < $num_tests * $num_runs; i++ ))
do
    ./serial_mergesort ${arr_size} >> serial_sort-${thresh}.txt && wait
done
