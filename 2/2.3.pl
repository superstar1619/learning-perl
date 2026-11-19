#!/usr/bin/perl
use warnings;
use v5.10;

chomp($r=<STDIN>);
$pi=3.141592654;

if($r>=0)
{
    $d=2*$pi*$r;
}
else
{
    $d=0;
}
print "The total len of a circle with a r of $r is $d.\n";