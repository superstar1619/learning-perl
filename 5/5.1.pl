#!/usr/bin/perl
use warnings;
use v5.10;

@lines = <>;
@lines = reverse(@lines);
foreach (@lines){
    say $_;
}
