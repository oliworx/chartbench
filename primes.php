<?php
if (empty($argv[1])) die('missing parameter limit');
$limit = (int) $argv[1];

$composite=[];
$sqrtlimit = (int)sqrt($limit);
for ($n = 2; $n <= $sqrtlimit; $n++)
	if (empty($composite[$n]))
		for ($i = $n*$n; $i < $limit; $i += $n)
			$composite[$i] = true;
 
$numprimes=0;
for ($n = 2; $n < $limit; $n++)
	if (empty($composite[$n]))
		$numprimes++;

echo $numprimes."\n";
