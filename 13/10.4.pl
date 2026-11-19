#!/usr/bin/perl -w

# use strict;

foreach (@ARGV)
{
    unlink "$_";
    print "rm $_ \n"
}