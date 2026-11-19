#!/usr/bin/perl
use v5.10;
use warnings;

print "Please input the string you want to repeat : ";
$string = <STDIN>;
print "Please input the times you want to repeat :";
$times = <STDIN>;

$result = $string x $times;
print "The result is :\n$result";

=pod
$i=1;
while($i<=$times)
{
    print $string;
    $i++;
}
=cut