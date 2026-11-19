#!/usr/bin/perl -w
use strict;

open my $date_fh, '-|', 'date';

my $date_time = <$date_fh>;
# print $date_time;
my @weekday = qw(Mon Tue Wed Thu Fri);
foreach (@weekday)
{
    if($date_time =~ m/^$_/)
    {
        print "get to work\n";
        exit;
    }
}
print "go play\n";
