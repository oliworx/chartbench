# gnuplot script file for plotting
#!/usr/bin/gnuplot
reset
set terminal png

set xlabel "max (Mio)"
set ylabel "performance (Mio primechecks/s)"
set format x "%.1f"
set format y "%.1f"

set title tit
set key below
set grid

plot "data/results.python2" using ($1/1000000):($1/$2/1000000) title "Python2"  w linespoints,\
     "data/results.python3" using ($1/1000000):($1/$2/1000000) title "Python3"  w linespoints,\
     "data/results.perl"    using ($1/1000000):($1/$2/1000000) title "Perl"     w linespoints,\
     "data/results.php"     using ($1/1000000):($1/$2/1000000) title "PHP 7.0"  w linespoints,\
     "data/results.php5.6"  using ($1/1000000):($1/$2/1000000) title "PHP 5.6"  w linespoints,\
     "data/results.tclsh"   using ($1/1000000):($1/$2/1000000) title "TCL"      w linespoints,\
     "data/results.pypy"    using ($1/1000000):($1/$2/1000000) title "PyPy"     w linespoints,\
     "data/results.ruby"    using ($1/1000000):($1/$2/1000000) title "Ruby 2.1" w linespoints,\
     "data/results.ruby2.3" using ($1/1000000):($1/$2/1000000) title "Ruby 2.3" w linespoints
