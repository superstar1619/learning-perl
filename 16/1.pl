#!/usr/bin/perl -w
use strict;
use v5.24;

my $quit_flags = 0;

sub deal_with_INT()
{
    $quit_flags = 1;
}


my $files = $ARGV[0];
open FH , '<', $files or die "can not open $files because $!";
my @str = <FH>;

$SIG{'INT'} = 'deal_with_INT';
while(chomp (my $pattern = <STDIN>))
{
    last if $quit_flags || $pattern eq '';
    my @match_lines ;
    my $num_of_match;
    eval{
        @match_lines = grep /$pattern/, @str;
        $num_of_match = @match_lines;
    };
    die "something error with $@" if $@;
    say "total matched is $num_of_match";
    foreach (@match_lines)
    {
        say ;
    }
}

print "quit successfully!";