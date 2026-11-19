#!/usr/bin/perl

use v5.10;

=pod

$line = <STDIN>;
if($line eq "\n")
{
    print "That was just a blank line!\n";
}
else
{
    print "That line of print was: $line";
}



# $text = "a line of text\n";
# chomp($text);


# chomp($text=<STDIN>);


$text=<STDIN>;
chomp($text);

print $text;

$food = <STDIN>;
$betty = chomp $food;
print $betty


$count = 0;
while($count < 10){
    $count += 2;
    print "count is now $count\n";
}


$n = 1;
while($n < 10){
    $sum += $n;
    $n += 2;
}
print "The total was $sum.\n";


$string .= "more text\n";
print $string;

=cut


$next_line = <STDIN>;
if(defined($next_line)){
    print "The input was $next_line";
}
else{
    print "No input available!\n";
}