#!/bin/bash

STEP_SIZE=1000000

cat benchmarks | while read interpreter scriptfile;
do
	echo "running '$interpreter $scriptfile' 10 times with increasing load"
	RESULT_FILE=data/results.$interpreter
	: > $RESULT_FILE
	for RUN in {1..10}
	do
		let MAX=RUN*STEP_SIZE
		/usr/bin/time -f "$MAX\t%U" -a -o $RESULT_FILE $interpreter $scriptfile $MAX
	done
done

CPU=`cat /proc/cpuinfo | grep 'model name' | uniq`
CPU=${CPU:12:100}
gnuplot -e "tit='Benchmark @ $CPU'" graph.conf.gp > data/bench.png
xdg-open data/bench.png &
