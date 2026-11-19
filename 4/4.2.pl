#!/usr/bin/perl
use warnings;
use v5.10;

sub total{
    my($tot)=0;
    foreach (@_){
        $tot+=$_;
    }
    $tot;
}

$tot=total(1..1000);
print "$tot\n";
