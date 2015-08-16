#!/bin/bash

# clear result files
cat benchmarks | while read interpreter scriptfile;
do
	: > data/results.$interpreter
done

for PARAM in {100000..1000000..100000}
do
	cat benchmarks | while read interpreter scriptfile;
	do
		echo "running $interpreter: "
		/usr/bin/time -f "$PARAM\t%U" -a -o data/results.$interpreter $interpreter $scriptfile $PARAM
	done
done

CPU=`cat /proc/cpuinfo | grep 'model name' | uniq`
CPU=${CPU:12:100}
gnuplot -e "tit='Benchmark @ $CPU'" graph.conf.gp > data/bench.png
xdg-open data/bench.png &
