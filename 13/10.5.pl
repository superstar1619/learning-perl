#!/usr/bin/perl -w
use File::Basename;
use File::Spec;

use strict;

my $old_file = $ARGV[0];
my $new_file = $ARGV[1];

if(-d $new_file)
{
    my $basename = basename $old_file;
    $new_file = File::Spec->catfile($new_file, $basename)
}

rename $old_file, $new_file;