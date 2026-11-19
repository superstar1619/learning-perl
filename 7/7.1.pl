#!/usr/bin/perl
use warnings;


foreach (<>)
{
    chomp;
    if(/fred/)
    {
        print "$_\n";
    }
}
