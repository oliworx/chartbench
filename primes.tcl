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
	
puts [expr $n - 1 - [array size composite]]
