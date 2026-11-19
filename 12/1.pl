#!/usr/bin/perl -w
use v5.22.0;
use strict;
foreach my $file (@ARGV)
{
    say "$file:";
    if (-r $file)
    {
        say "$file is readable.";
    }
    if (-w $file)
    {
        say "$file is writable.";
    }
    if (-x $file)
    {
        say "$file is executable";
    }
}