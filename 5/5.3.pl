#!/usr/bin/perl
use warnings;
use v5.10;

$n = <STDIN>;
@lines = <STDIN>;
chomp(@lines);
foreach (1..6)
{
    foreach (1..9)
    {
        print $_;
    }
    print 0;
}
print "\n";
foreach (@lines)
{
    printf "%*s\n",$n,$_;
}