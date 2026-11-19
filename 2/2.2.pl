#!/usr/bin/perl
use warnings;
use v5.10;

chomp($r=<STDIN>);
$pi=3.141592654;

$d=2*$pi*$r;
print "The total len of a circle with a r of $r is $d.\n";