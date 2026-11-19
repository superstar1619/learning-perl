#!/usr/bin/perl -w

use strict;

my $what = <STDIN>;
chomp $what;
# $what = quotemeta($what);
while(<>)
{
    chomp;
    if(/($what){3}/)
    {
        print "Matched!\n";
        # print "$_\n";
    }
}