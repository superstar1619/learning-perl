#!/usr/bin/perl -w
use strict;

my $dir = $ARGV[0];

chdir $dir;
system "ls -l";
