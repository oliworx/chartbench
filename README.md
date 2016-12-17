# chartbench


[![Codacy Badge](https://api.codacy.com/project/badge/Grade/823777f934b041bbb927dc37c3502c2c)](https://www.codacy.com/app/kurmis/chartbench?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=oliworx/chartbench&amp;utm_campaign=badger)

## what it is
some scripts to run benchmarks on a computer and create simple charts
from the results

## what is does
* it benchmarks some popular implementations of scripting languages
* the benchmark task is calculating all primes up to a given number
  using a straight sieve of Eratosthenes algorithm
* for every scripting languages the benchmark is running 10 times with 
  increasing work load
* for python the same python code is run by python2, python3 and pypy
* a chart is generated to compare the the performance


## how to setup
* grab the files from github 
* make shure you have all the tools installed:
  `sudo apt-get install python python3 pypy perl php5-cli tcl ruby gnuplot xdg-utils`

## how to run
* open a terminal
* go to the chartbench directory: `cd chartbench`
* start benchmarking by entering `./runbench.sh`
* all results are saved in the data directory
* the chart should immediately open in your prefered image viewer
![](https://github.com/oliworx/chartbench/blob/master/data/bench.png)
