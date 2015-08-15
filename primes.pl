#!/usr/bin/perl

$n = int($ARGV[0]) or die 'missing parameter maximum number';
@composite;
for $i (2 .. int(sqrt($n))) {
 if (!$composite[$i]) {
  for ($j = $i*$i; $j <= $n; $j += $i) {
	$composite[$j] = 1;
  }
 }
}

$numprimes=0;
for my $i (2 .. $n) {
	$composite[$i] || $numprimes++;
}

print $numprimes."\n";
