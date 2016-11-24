#!/usr/bin/perl -w

use strict;
use utf8;

my $NM='NM_123';
open (ZY,$NM);
my @pro=<ZY>;
($a)=@pro;
print $a,"\n";
close ZY;

