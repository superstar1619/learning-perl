#!/usr/bin/perl -w
use v5.22.0;
use strict;
use Cwd;

print "input the path you want to change to: ";
chomp(my $path = <STDIN>);


if($path =~ m/^\s*$/)
{
    chdir or die "cannot chdir to ~: $!";
}
else
{
    chdir $path or die "cannot chdir to $path: $!";
}
print getcwd(), "\n";
foreach (sort(glob '*'))
{
    print $_ . " ";
}
print "\n";
