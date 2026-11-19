#!/usr/bin/perl -w

use strict;

if($ARGV[0] =~ m/-s/)
{

    my $source = $ARGV[1];
    my $dest = $ARGV[2];

    symlink $source, $dest or die "error msg:$!";
}
else
{

    my $source = $ARGV[0];
    my $dest = $ARGV[1];

    link $source, $dest or die "error msg:$!";
}
