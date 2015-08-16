# gnuplot script file for plotting
#!/usr/bin/gnuplot
reset
set terminal png

set xlabel "max"
set ylabel "time(s)"

set title tit
set key below
set grid

plot "data/results.python2" using 1:2 title "Python 2.7.9" with linespoints,\
     "data/results.python3" using 1:2 title "Python 3.4.3" with linespoints,\
     "data/results.perl5"   using 1:2 title "Perl 5.20.2"  with linespoints,\
     "data/results.php5"    using 1:2 title "PHP 5.6.4"    with linespoints,\
