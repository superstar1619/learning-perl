#!/usr/bin/perl
use warnings;


foreach (<>)
{
    chomp;
    if(/(\S)\g{-1}/)
    {
        print "$_\n";
    }
}
