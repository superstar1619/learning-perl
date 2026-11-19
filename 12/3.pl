#!/usr/bin/perl -w
use v5.22.0;
use strict;
foreach my $file (@ARGV)
{
    say "$file is readable and writable" if -r -w -o $file;
}