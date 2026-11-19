#!/usr/bin/perl -w
use strict;

# my @names = qw{ zero one two three four five six seven eight nine};
# print "Bedrock @names[ 9, 0, 2, 1, 0]\n";

# my @ls = 1..10;
# foreach my $key (@ls)
# {
#     $key=1;
# }
# print "@ls";
use v5.34;
use List::MoreUtils qw(natatime);

my @array = 1..10;
my $iterator = natatime 3, @array;
# say $iterator;

while( my @triad = $iterator->())
{
    print "Got @triad\n";
}