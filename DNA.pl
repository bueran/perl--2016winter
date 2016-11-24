#!/usr/bin/perl -w

use strict;
use utf8;

#save dna information

my $dna1='ACGGTAC';
my $dna2='CGGTAC';

print "Here is the first DNA seq0uence: \n";
print "$dna1\n\n";
print "Here is the second DNA sequence: \n";
print "$dna2\n\n";

#combination dna1 with dna2

print "Here is DNA sequence: \n";
print $dna1,$dna2,"\n\n";

#transcription dna

(my $rna=my $dna=$dna1 . $dna2)=~s/T/U/g;
print "Here is RNA sequence: \n";
print $rna,"\n\n";

#reverse and complement

my $rev=reverse $dna;
print "Here is reverse DNA sequence: \n";
print"$rev\n\n";

my $revcom=$rev;
$revcom=~s/A/B/g;
$revcom=~s/T/A/g;
$revcom=~s/B/T/g;
$revcom=~s/C/S/g;
$revcom=~s/G/C/g;
$revcom=~s/S/G/g;
print "Here is reverse and complement DNA sequence: \n";
print "$revcom\n\n";
