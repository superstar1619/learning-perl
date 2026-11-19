#!/usr/bin/perl
use warnings;


foreach (<>)
{
    chomp;
    if(/(wilma.*fred|fred.*wilma)/)
    {
        print "$_\n";
    }
}
