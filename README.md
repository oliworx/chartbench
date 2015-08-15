# chartbench

## what it is
some scripts to run benchmarks on a computer and create simple charts from the results

## what is does
* the benchmark task is calculating all primes up to a given number
* benchmark is running 10 times with increasing work load
* the same python code is run by python2 and python3
* a chart is generated to compare the the performance of python 2 & 3


## how to setup
* grab the files from github 
* make shure you have all the tools installed:
  `sudo apt-get install python python3 gnuplot xdg-utils`

## how to run
* open a terminal
* go to the chartbench directory: `cd chartbench`
* start benchmarking by entering `./runbench.sh`
* all results are saved in the data directory
* the chart should immediately open in your prefered image viewer
![](https://github.com/oliworx/chartbench/blob/master/data/bench.png)
