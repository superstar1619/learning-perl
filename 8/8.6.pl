#!/usr/bin/perl -w

use strict;


while (<>) {
    chomp;
    if (/\s\z/) {
	print "Matched: \n";
    } else {
	print "No match.\n";
    }

}
