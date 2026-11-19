#!/usr/bin/perl
use warnings;
use v5.10;

@line = <STDIN>;
chomp(@line);
@line = sort @line;

print "@line";

print "\n";

foreach $value (@line)
{
    print "$value\n";
}