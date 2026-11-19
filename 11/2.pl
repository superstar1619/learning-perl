#!/usr/bin/perl -w

use strict;

use Time::Moment;
my $now_dt = Time::Moment->now;
my $old_dt = Time::Moment->new(
    year => $ARGV[0],
    month => $ARGV[1],
);

my $years = $old_dt->delta_years($now_dt);
my $months = $old_dt->delta_months($now_dt) % 12;
my $days = $old_dt->delta_days($now_dt);

print "$years $months $days\n"