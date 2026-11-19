#!/usr/bin/perl -w

use strict;


while (<>) {
    chomp;
    if (/a\b(.{0,5})/s) {
	print "$1\n";
    } else {
	print "No match.\n";
    }

}
