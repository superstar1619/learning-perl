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
    my @content = <FILE_IN>;
    my $list = join '', @content;
    if(! ($list =~ m/\Q## Copyright (C) 20XX by Yours Truly\E$/))
    {
        $list .= "\n## Copyright (C) 20XX by Yours Truly";
    }
    print $list;
}