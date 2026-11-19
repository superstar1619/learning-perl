#!/usr/bin/perl
use warnings;
use v5.10;

sub greet{
    state($preperson);
    print "Hi $_[0]! ";
    if(defined($preperson))
    {
        print "$preperson is also here!";
    }
    else
    {
        print "You are the first one here!";
    }
    print "\n";
    $preperson=$_[0];
}

greet("Fred");
greet("Barney");