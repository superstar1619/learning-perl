#!/usr/bin/perl
use warnings;


foreach (<>)
{
    chomp;
    if(/"\b[A-Z]+[0-9a-z_]+\w*\b"/)
    {
        print "$_\n";
    }
}
