#!/bin/bash

STEP_SIZE=100000

for PYTHON_VERSION in 2 3 
do
	RESULT_FILE=data/results.python$PYTHON_VERSION
	: > $RESULT_FILE
	for RUN in {1..10}
	do
		let MAX=RUN*STEP_SIZE
		/usr/bin/time -f "$MAX\t%U" -a -o $RESULT_FILE python$PYTHON_VERSION primes.py $MAX
	done
	let PYTHON_VERSION=PYTHON_VERSION+1 
done

CPU=`cat /proc/cpuinfo | grep 'model name' | uniq`
CPU=${CPU:12:100}
gnuplot -e "tit='Benchmark @ $CPU'" graph.conf.gp > data/bench.png
xdg-open data/bench.png &
