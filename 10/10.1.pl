#!/usr/bin/perl -w

use strict;

my $num = int(1 + rand 100);
GUESS: while(<STDIN>)
{
    chomp;
    if( $_ eq "" || $_ eq "exit" || $_ eq "quit")
    {
        print "Exit Sucessfully!\n";
        last GUESS;
    }
    elsif ($_ == $num)
    {
        print "Correctly Guess!\n";
        last GUESS;
    }
    else
    {
        $_ < $num ? print "Too low" : print "Too high";
        print "\n";
    }
}