#!/usr/bin/perl -w

use strict;

# $_ = "Sleep is a fundamental aspect of human life that plays a crucial role in maintaining physical and mental health. It is a natural state of rest that allows the body and mind to rejuvenate and prepare for the next day. Despite its importance, many people do not prioritize sleep, often sacrificing it for work, social activities, or other responsibilities. However, the consequences of sleep deprivation can be severe and long-lasting. In this essay, we will explore the importance of sleep and the benefits it provides to our overall well-being.";
# s/(.{50,75}\b{lb})/$1\n/g;
# print ; 

my $filename = $ARGV[0];
open FILE, $filename 
    or die "Can't open '$filename': $!";
my $lines = join '', <FILE>;
$lines =~ s/^/$filename: /gm;
print $lines;