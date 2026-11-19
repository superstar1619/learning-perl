#!/usr/bin/perl -w

use strict;


while (<>) {
    chomp;
    if (/(?<word>\b\w*a\b)/) {
	    print "\'word\' contains \'$+{word}\'\n";
    } else {
	    print "No match.\n";
    }

}
