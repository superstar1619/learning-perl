#!/usr/bin/perl -w

use strict;


sub max()
{
    my($a, $b) = @_;
    if($a > $b)
    {
        return $a;
    }
    else
    {
        return $b;
    }
}

my $len = 0;

foreach (sort keys %ENV)
{
    $len = &max($len, length $_);
    # print "$len\n";
}

$len += 1;
$ENV{DEBUG} = undef;
foreach my $value (sort keys %ENV)
{
    unless(defined $ENV{$value})
    {
        print "$value" ;
        print " " x ($len - length $value) , "\n";
        # print "$ENV{$value}\n";
    }
}