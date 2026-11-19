#!/usr/bin/perl
use warnings;
use v5.10;

sub greet{
    state(@preperson);
    print "Hi $_[0]! ";
    if(@preperson)
    {
        print "I've seen: @preperson";
    }
    else
    {
        print "You are the first one here!";
    }
    print "\n";
    push @preperson,$_[0];
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");