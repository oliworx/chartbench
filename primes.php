<?php
if (empty($argv[1])) die('missing parameter limit');
$limit = (int) $argv[1];

$nums=[];
$sqrtlimit = (int)sqrt($limit);
for ($n = 2; $n <= $sqrtlimit; $n++)
	if (!isset($nums[$n]))
		for ($i = $n*$n; $i <= $limit; $i += $n)
			$nums[$i] = 1;

echo $limit-1-array_sum($nums)."\n";
