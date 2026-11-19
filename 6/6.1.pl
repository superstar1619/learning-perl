#!/usr/bin/perl
use warnings;
use v5.10;

my %hash = ("fred" => "flintstone", "barney" => "rubble", "wilma" => "flintstone");

while(<STDIN>)
{
    chomp;
    if(exists $hash{$_})
    {
        print "$hash{$_}\n";
    }
    else
    {
        print "error\n";
    }
}