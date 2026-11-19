#!/usr/bin/perl -w
use strict;

my @numbers;
push @numbers, split while <>;

@numbers = sort {$a <=> $b} @numbers;

foreach (@numbers)
{
    printf "%20g\n",$_;
}

