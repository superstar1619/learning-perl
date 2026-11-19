#!/usr/bin/perl -w

use strict;

my $source = $ARGV[0];
my $dest = $ARGV[1];

link $source, $dest or die "error msg:$!";
