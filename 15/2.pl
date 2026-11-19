#!/usr/bin/perl -w
use strict;

my $dir = $ARGV[0];

# open my $out, '>', 'ls.out';
# open my $err, '>', 'ls.err';
# chdir $dir;
# my $output = `ls -l`;
# if($!)
# {
#     print $err "$!"; 
# }
# else
# {
#     print $out "$output";
# }

open my $out, '>', 'ls.out';
open my $err, '>', 'ls.err';

chdir $dir;
open my $input, '-|', 'ls', '-l';
my @output = <$input>;
if($!)
{
    print $err "$!"; 
}
else
{
    print $out "@output";
}