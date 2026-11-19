#!/usr/bin/perl -w

use autodie;
use strict;



# while(<>)
# {
#     s/fred/Larry/gi;
#     print ;
# }

foreach my $filename (@ARGV)
{
    our $filenameout = $filename . ".out";
    open FILE_IN, $filename;
    open FILE_OUT,">", $filenameout;
    select FILE_OUT;
    while(<FILE_IN>)
    {
        s/fred/#/gi;
        s/Wilma/Fred/gi;
        s/#/Wilma/gi;

        print; 
    }
}