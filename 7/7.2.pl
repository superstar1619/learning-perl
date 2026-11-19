#!/usr/bin/perl
use warnings;


foreach (<>)
{
    chomp;
    if(/(f|F)red/)
    {
        print "$_\n";
    }
}
