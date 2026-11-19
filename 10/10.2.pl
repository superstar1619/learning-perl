#!/usr/bin/perl -w

use strict;

my $Debug = $ENV{DEBUG} // 1;
my $num = int(1 + rand 100);
print "select $num \n" if $Debug;
GUESS: while(<STDIN>)
{
    chomp;
    if(/exit|quit|\A\s*\z/i)
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