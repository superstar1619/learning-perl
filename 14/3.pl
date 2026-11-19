#!/usr/bin/perl -w
use strict;

my $str ;
chomp($str = <STDIN>);
my $sub;
chomp($sub = <STDIN>);
$_ = 0;
while(($_ = index($str, $sub, $_)) != -1)
{
    print "$_ \n";
    $_ ++;
}
