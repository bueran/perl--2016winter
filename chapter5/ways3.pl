#!/usr/bin/perl -w

use strict;
use utf8;

print "Please enter your DNA sequence filename: ";
my $seq=<STDIN>;
chomp $seq;

unless (-e $seq ){
print "file '$seq' doesn't exist.\n\n";
}

open SEQ,"<",$seq or die "$0:failed to open input file '$seq': $!\n";

my @dna=<SEQ>;

close SEQ or warn "$0:failed to close input file '$seq':$!\n";

my $dna=join('',@dna);
$dna =~ s/\s//g;

my $aa=0;
my $cc=0;
my $gg=0;
my $tt=0;
my $ee=0;

while ($dna =~ /a/ig) {$aa++}
while ($dna =~ /c/ig) {$cc++}
while ($dna =~ /g/ig) {$gg++}
while ($dna =~ /t/ig) {$tt++}
while ($dna =~ /[^atcg]/ig) {$ee++}

print "A=$aa\n","C=$cc\n","G=$gg\n","T=$tt\n","Error=$ee\n";
