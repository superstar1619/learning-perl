#!/usr/bin/perl
use warnings;
use v5.10;

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
    printf "%20s",$_;
}