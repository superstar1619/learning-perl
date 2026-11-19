#!/usr/bin/perl
use warnings;
use v5.10;

@line = <STDIN>;
chomp(@line);
@line = reverse (@line);
foreach $value (@line)
{
    print $value,"\n";
}