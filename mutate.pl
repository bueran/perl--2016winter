#! /usr/bin/perl -w
use strict;
use utf8;

print "Please type your DNA sequence: \n";
my $dna=<STDIN>;
chomp;
my $newdna;
print "Please type the number of mutate DNA that you need: \n";
my $num=<STDIN>;
my $i;
print "This is a DNA before mutation: \n";
print "$dna\n\n";
print "This is a DNA after mutation: \n";
for ($i=0;$i<$num;++$i){
$newdna=mutate($dna);
print"$newdna\n\n";
}
exit;




sub position{
my ($dna)=@_;
my $pos=int(rand(length $dna));
return ($pos);
}

sub nucleo{
my @bases=('a','c','t','g');
my $ba=$bases[int(rand @bases)];
return $ba;
}

sub mutate{
my ($dna)=@_;
my $ba;
my $pos;
my $base;
do {
$pos=position($dna);
$base=nucleo();
 $ba=substr($dna,$pos,1,$base);
}until ($ba ne $base); 
return $dna;
} 
