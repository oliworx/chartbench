# gnuplot script file for plotting
#!/usr/bin/gnuplot
reset
set terminal png

set xlabel "max"
set ylabel "time(s)"

set title tit
set key below
set grid

plot "data/results.python2" using 1:2 title "Python2" with linespoints,\
     "data/results.python3" using 1:2 title "Python3" with linespoints,\
     "data/results.perl"    using 1:2 title "Perl"    with linespoints,\
     "data/results.php"     using 1:2 title "PHP"     with linespoints,\
