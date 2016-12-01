#!/usr/bin/perl -w

use strict;
use utf8;

my $pro='protein';
open PR,"<",$pro or die "$0:failed to open input file '$pro'  :$!\n";
my @pros = <PR>;
close PR or warn "$0:failed to close input file '$pro' :$!\n";

my $protein=join ('',@pros);
$protein=~ s/\s//g;

my $motif;
do{
print "Enter a motif: ";
$motif = <STDIN>;
chomp $motif;
if ($protein=~/$motif/){
print "I found it!\n\n";
}
else {
print "I couldn't find it!\n\n";
}
}
until ($motif =~ /^\s*$/);

