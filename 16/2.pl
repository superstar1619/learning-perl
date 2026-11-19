#!/usr/bin/perl -w
use strict;
use v5.24;

foreach (glob '*')
{
    my ($atime, $mtime, $ctime) = (stat $_)[8, 9, 10];
    printf "%s\t%d\t%d\t%d\n", $_, $atime, $mtime, $ctime;
}