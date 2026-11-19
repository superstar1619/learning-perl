#!/usr/bin/perl
use warnings;
use v5.10;
# use v5.28;
#use strict;
=pod
sub marine {
    $n += 1;
    print "Hello, sailor number $n!\n"; 
}

&marine;
&marine;
&marine;
&marine;

sub sum_of_fred_and_barney{
    $fred + $barney;
}
$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;
print "\$wilma is $wilma.\n";

$betty = 3 * &sum_of_fred_and_barney;
print "\$betty is $betty.\n";



sub max{
    if ( $_[0] > $_[1] )
    {
        $_[0];
    }
    else
    {
        $_[1];
    }
}

$n = &max(10, 15 );
print $n;

sub max{
    my($m,$n);
    ($m,$n) = @_;
    if ($m > $n)
    {
        $m;
    }
    else
    {
        $n;
    }
}
$n = &max(10, 15 );
print $n;
sub max{
    my($max_so_far)=shift @_;
    foreach (@_){
        if( $_ > $max_so_far ){
            $max_so_far = $_;
        }
    }
    $max_so_far
}

$maxinum = &max(3, 5, 10, 4, 6);
# $maxinum = &max(@number);
print $maxinum;
foreach (1..10){
    my($square) = $_ * $_ ;
    print "$_ squared is $square.\n";
}
my $bamm_bamm = 3;
$bamm_bamm += 1;
print $bamm_bamm;

my @names = qw / fred barney betty dino wilma pebbles bamm-bamm /;
my $result = &which_element_is("dino",@names);
print $result;

sub which_element_is{
    my($what,@array)=@_;
    while(my($number, $value)= each @array)
    {
        if($value eq $what)
        {
            print "$value $what\n";
            return $number;
        }
    }
    -1;
}


sub division {
    $_[0] / $_[1];
}
my $quotient = &division(355, 113);
print $quotient;

sub list_from_fred_to_barney{
    my(@array);
    if($fred < $barney){
        if(wantarray)
        {
            $fred..$barney;
        }
        else
        {
            $barney-$fred+1;
        }
    }
    else
    {
        if(wantarray)
        {
            reverse $barney..$fred;
        }
        else
        {
            $fred-$barney+1;
        }
    }
}

$fred = 11;
$barney = 6;
@c = &list_from_fred_to_barney;
print "@c\n";
$c=42+&list_from_fred_to_barney;
print "$c\n";


sub marine{
    state $n = 0;
    $n += 1;
    print "Hello, sailor number $n\n";
}
&marine;
&marine;
&marine;
&marine;


running_sum(5,6);
running_sum(1..3);
running_sum(4);

sub running_sum{
    state $sum = 0;
    state @numbers;

    foreach my $number (@_){
        push @numbers,$number;
        $sum += $number;
    }
    say "The sum of (@numbers) is $sum";
}

my $quotient = division(355, 113 );
print $quotient;
sub division {
    $_[0] / $_[1];
}


say next_fibonacci();
say next_fibonacci();
say next_fibonacci();
say next_fibonacci();

sub next_fibonacci{
    state @numbers = (0,1);
    push @numbers,$numbers[-1]+$numbers[-2];
    return $numbers[-1];
}

use v5.30;
use feature qw(signatures);

sub max($m,$n){
    if($m >$n)
    {
        $m;
    }
    else
    {
        $n;
    }
}

sub max ($max_so_far,@rest){
    foreach (@rest){
        if( $_ > $max_so_far){
            $max_so_far=$_;
        }
    }
    $max_so_far;
}
sub max ($max_so_far,@){
    foreach (@_){
        if ($_ > $max_so_far)
        {
            $max_so_far=$_;
        }
    }
    $max_so_far;
}

print &max(1,2,2,4,5,);

sub list_from_fred_to_barney ($fred = 0,$barney = 7){
    if ($fred < $barney)
    {
        $fred .. $barney;
    }
    else
    {
        reverse $barney..$fred;
    }
}

my @defaults = list_from_fred_to_barney();
my @defaults_end =list_from_fred_to_barney(17);

say "defaults: @defaults";
say "defaults_end: @defaults_end";

sub one_or_two_args($first, $=){
    ...
}
=cut

sub sum :prototype($$){ $_[0] + $_[1] }
print sum(1,3);