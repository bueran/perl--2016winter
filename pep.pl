#!/usr/bin/perl -w

use strict;
use utf8;

my $NM="NM_123";
open my $ZY,'<',$NM or die "$0:failed to open input file '$NM': $!\n";
print "Here is Protein sequence: \n";
my $seq = <$ZY>;
print $seq;
$seq = <$ZY>;
print $seq;
$seq = <$ZY>;
print $seq;
$seq = <$ZY>;
print $seq;
$seq = <$ZY>;
print $seq;
$seq = <$ZY>;
print $seq;
$seq = <$ZY>;
print $seq;
close $ZY or warn "$0:failed to close input file '$NM': $!\n";


open $ZY,'>>',$NM or die "$0:failed to open input file '$NM': $!\n";
select $ZY;
print "My name is ZhangYuan.\n";
print STDOUT "My name is ZhangYuan.\n";
close $ZY or warn "$0:failed to close input file '$NM': $!\n";
