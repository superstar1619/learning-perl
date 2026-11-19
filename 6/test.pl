#!/usr/bin/perl
use warnings;
use v5.10;


=pod
$family_name{'fred'} = 'flintstone';
$family_name{'barney'} = 'rubble';

foreach my $person (qw< barney fred >){
    print "I've heard of $person $family_name{$person}.\n";
}

$foo = 'bar';
print $family_name{ $foo . 'ney'};

$family_name{'fred'}='astaire';
$bedrock = $family_name{'fred'};

$family_name{'wilma'} = 'flintstone';
$family_name{'betty'} .= $family_name{'barney'};

$granite = $family_name{'larry'};


%some_hash = ('foo',35,'bar',12.4,2.5,'hello','wilma',1.72e30,'betty',"bye\n");
my @any_array = %some_hash;
print "@any_array\n";


my %last_name =(
    'fred' => 'flintstone'.
    'dino' => undef,
    'barney' => 'rubble',
    'betty' => 'rubble',
);

my %last_name =(
    fred => 'flintstone'.
    dino => undef,
    barney => 'rubble',
    betty => 'rubble',
);

$hash{bar.foo} = 1;


my %hash = ('a' => 1,'b' => 2,'c' => 3);
my @k = keys %hash;
my @v = values %hash;
print "@k\n";
print "@v\n";

my $count = keys %hash;
print "$count\n";


if (%hash){
    print "That was a true value!\n";
}

while ( ($key, $value) = each %hash)
{
    print "$key => $value\n"
}

foreach $key (sort keys %hash)
{
    $value = $hash{$key};
    print "$key => $value\n"
}

=cut


$books{'fred'} = 3;
$books{'wilma'} = 1;

$books{'barney'} = 0;
$books{'pebbles'} = undef;

if (exists $books{"dino"})
{
    print "Hey, there's a library card for dino\n";
}

if (exists $books{"pebbles"})
{
    print "Hey, there's a library card for pebbles\n";
}

my $person = "betty";
delete $books{$person};

if (exists $books{"betty"})
{
    print "Hey, there's a library card for betty\n";
}

foreach $person (sort keys %books)
{
    if(defined $books{$person})
    {
        print "$person has $books{$person} item\n";
    }
}

print "PATH is $ENV{PATH}\n";

print "CHARACTER is $ENV{CHARACTER}\n";