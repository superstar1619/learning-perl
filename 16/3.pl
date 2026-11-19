#!/usr/bin/perl -w
use strict;
use v5.24;

sub localize_time()
{
    my($time) = $_;
    my($year, $mon, $day) = (localtime $time)[5, 4, 3];
    my $date = sprintf "%04d-%02d-%02d", $year+1900, $mon+1, $day;
    $date;
}

foreach (glob '*')
{
    my ($atime, $mtime, $ctime) = map localize_time, (stat $_)[8, 9, 10];
    printf "%s\t%s\t%s\t%s\n", $_, $atime, $mtime, $ctime;
}