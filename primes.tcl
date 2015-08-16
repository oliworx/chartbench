#!/usr/bin/tclsh
 
set n [lindex $argv 0]
 
array set composite {}
set sqrtn [expr int(sqrt($n))]
for {set i 2} {$i <= $sqrtn} {incr i} {
	if (![info exists composite($i)]) {
		for {set j [expr $i*$i]} {$j <= $n} {incr j $i}  {
			set composite($j) 1
		}
	}
}
	
set numprimes 0;
for {set i 2} {$i<=$n} {incr i} {
	if (![info exists composite($i)]) {
		incr numprimes;
	}
}
puts $numprimes;
