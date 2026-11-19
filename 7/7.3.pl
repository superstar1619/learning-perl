#!/usr/bin/perl
use warnings;


foreach (<>)
{
    chomp;
    if(/\./)
    {
        print "$_\n";
    }
}
