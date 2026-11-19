#!/usr/bin/perl
use warnings;
use v5.10;

sub average{
    my($tot,$avg);
    foreach (@_){
        $tot+=$_;
    }
    $avg=$tot/(@_);
    $avg;
}

sub above_average{
    my($avg,@array)=(average(@_));
    foreach (@_){
        if($_ > $avg)
        {
            push @array,$_;
        }
    }
    @array;
}
my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100,1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";