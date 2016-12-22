#!/use/bin/perl -w
use strict;
use utf8;
use BeginPerlBioinfo;

my %hash=(
 dog => 'mammal',
 robin => 'bird',
 asp => 'reptile',
);

print "$hash{asp}";
print "\n";
$hash{asp}="abc";

print "new:$hash{asp}";

print "\n";
my @keys=keys %hash;
my @values=values %hash;
 print "keys:@keys";
print "\n";
 print "values:@values";
print "\n";

my $key;
my $value;
my $ke;
my $va;
my $k;
my $v;

delete $hash{asp};
while(($key,$value)=each %hash){
print "$key=>$value";
print "\n";
}
$hash{dog}=undef;
foreach $ke(sort keys %hash){
$va=$hash{$ke};
print "$ke=>$va\n";
}
$hash{dog}="bk";
my %reverse=reverse %hash;
foreach $k(sort keys %reverse){
$v=$reverse{$k};
print "$k=>$v\n";
}
my $nu=keys %hash;
my $vnu=values %hash;
print "the keys:$nu\nthe Values:$vnu\n";


