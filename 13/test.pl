#!/usr/bin/perl -w
use v5.22.0;
use strict;
use Cwd;
say getcwd();
open my $fh, '<', '../12/test.pl';
say getcwd();
