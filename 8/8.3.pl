#!/usr/bin/perl -w

use strict;


while (<>) {
    chomp;
    if (/(\b\w*a\b)/) {
	print "\$1 contains \'$1\'\n";
    } else {
	print "No match.\n";
    }

}
