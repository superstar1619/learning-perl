#!/usr/bin/perl -w

use strict;

for my $key (glob ".* *")
{
    if(-l $key)
    {
        my $value = readlink $key;
        print "$key -> $value\n";
    }
}