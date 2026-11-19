#!/usr/bin/perl
use warnings;
use v5.10;

=pod
$line = <STDIN>;
chomp($line);
chomp($line = <STDIN>);

while(defined($line = <STDIN>))
{
    print "I saw $line";
}
while(<STDIN>){
    print "I saw $_";
}
foreach (<STDIN>){
    print "I saw $_";
}

while (defined($line = <>)){
    chomp($line);
    print "It was $line that I saw!\n";
}

while (<>){
    chomp;
    print "It was $_ that I saw!\n";
}
use v5.22;

while (<<>>){
    chomp;
    print "It was $_ that I saw!\n";
}

print "@ARGV";


foreach (@ARGV){
    print "$_\n";
}
print "@ARGV";
while (<>){
    chomp;
    print "It was $_ that I saw!\n";
}
print "@ARGV";

@array = qw / fred barney betty /;
print "@array\n";
print sort <>;
$result = print (2+3)*4;
print $result;
my @items = qw( wilma dino pebbles );
my $format = "The items are:\n" . ("%10s\n" x @items);
printf $format,@items;
=cut

my $selected_output = 'my_output';
open LOG, "> $selected_output";
