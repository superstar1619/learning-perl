#!/usr/bin/perl
use warnings;
use v5.10;

=pod
$fred[0]="yabba";
$fred[1]="dabba";
$fred[2]="doo";

print "$fred[0] $fred[1] $fred[2]\n";

$number=2.71828;
say $fred[$number-1];

$blank = $fred[142_857];
$blanc = $mel;
print "$blank a $blanc b\n";


$rocks[0] = 'bedrock';
$rocks[1] = 'slate';
$rocks[2] = 'lava';
$rocks[3] = 'crushed rock';
$rocks[99] = 'schist';


=cut

=pod
$i=0;

while(defined($line=<STDIN>))
{
    chomp($line);
    push @input,$line;
}
while(defined($line=pop @input))
{
    say $line;
}

#say @input;

$i=0;
while($i<=$#input)
{
    say $input[$i++];
}


@array=qw# dino fred barney#;
$m=shift(@array);
$n=shift @array;
shift @array;
$o= shift @array;
print "$m,$n,$o\n";
unshift @array,1..5;
print @array;


@array=qw(pebbles dino fred barney betty);
@removed = splice @array,2 ;
say "@array";
say "@removed";

foreach $rock (qw/ bedrock slate lava / ){
    print "One rock is $rock.\n";
}
@rocks=qw/bedrock slate lava /;
$rock='shale';
foreach $rock (@rocks){
    $rock="\t$rock";
    $rock.="\n";
}
print "The rocks are:\n",@rocks;
print "rock is still $rock\n";

foreach (1..10){
    print "I can count to $_!\n";
}
$_="Yabba dabba doo\n";
print;

foreach (1..10){
    say;
}

@fred = 6..10;
say "@fred";
@barney = reverse(@fred);
say "@barney";
@wilma = reverse 6..10;
say "@wilma";
@fred = reverse @fred;
print "@{fred} 1\n";

@rocks = qw/ bedrock slate rubble granite/;
say "@rocks";
@sorted = sort(@rocks);
say "@sorted";
@back = reverse sort (@rocks);
say "@back";
@rocks = sort @rocks;
say "@rocks";
@numbers = sort 97..102;
say "@numbers";

@rocks = qw/ bedrock slate rubble granite/;

@i=each @rocks;
print "@i\n";
@i=each @rocks;
print "@i";
require v5.12;

@rocks = qw/ bedrock slate rubble granite/;
while(($index,$value)=each @rocks)
{
    print "$index: $value\n";
}


@people = qw (fred barney betty);
@sorted = sort @people;
$number = 42 + @people;
print "@sorted \n $number \n";

@fred = 6*7;
print "@fred";

@rocks = qw ( talc quartz jade obsidian );
print "How many rocks do you have?\n";
print "I have ",@rocks, " rocks!\n";
print "I have ", scalar @rocks, " rocks!\n";
=cut

@line = <STDIN>;
chomp(@line);
while(($index, $value )= each @line)
{
    print "$index : $value \n";
}