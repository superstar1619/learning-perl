#!/usr/bin/perl -w
use strict;

my %lastname = qw{
    fred flintstone Wilma Flintstone Barney Rubble
    betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @results = sort { "\F$lastname{$a}" cmp "\F$lastname{$b}" or "\F$a" cmp "\F$b"} keys %lastname;

foreach (@results)
{
    print "$_ $lastname{$_}\n";
}