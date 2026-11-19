#!/usr/bin/perl
use warnings;
use v5.10;

@name = qw ( fred betty barney dino wilma pebbles bamm-bamm );
@line = <STDIN>;
chomp (@line);
foreach $value (@line)
{
    print "$name[$value-1]\n";
}