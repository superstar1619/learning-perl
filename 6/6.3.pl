#!/usr/bin/perl
use warnings;
use v5.10;

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

foreach my $value (sort keys %ENV)
{
    print "$value" ;
    print " " x ($len - length $value);
    print "$ENV{$value}\n";
}