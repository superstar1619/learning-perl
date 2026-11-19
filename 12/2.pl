#!/usr/bin/perl -w
use v5.22.0;
use strict;
my $day = -1;
my $file = '';
foreach (@ARGV){
    if(! -e $_)
    {
        next;
    }
    if(-M $_ > $day)
    {
        $day = -M $_;
        $file = $_;
    }
}
if($file)
{
    say "$file: $day";
}
else
{
    say "No file!";
}