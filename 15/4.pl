#!/usr/bin/perl -w
use strict;

my $exit_flag = 0;

sub chfig()
{
    $exit_flag = 1;
}

$SIG{'INT'} = 'chfig';

Flag :while(1)
{
    last Flag if $exit_flag;
}
print "exit successfully!";
