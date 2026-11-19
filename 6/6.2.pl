#!/usr/bin/perl
use warnings;
use v5.10;

my %hash;

foreach (<>)
{
    chomp;
    $hash{$_}++;
}

foreach my $key (sort keys %hash)
{
    print "$key => $hash{$key}\n";
}
