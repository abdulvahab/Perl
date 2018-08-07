#!/usr/bin/perl
use strict;
use warnings;
my ($dnaseq,$count,$nucleo);
print "Enter DNA Seq: ";
$dnaseq = <STDIN>;
chomp $dnaseq;

print "Opposite Strand is: ";
for ($count=0,$count<(length($dnaseq)),$count++){
  $nucleo = substr($dnaseq,$count,1);
  if($nucleo eq "A") {print "T";}
  elsif($nucleo eq "G") {print "C";}
  elsif($nucleo eq "C") {print "G";}
  else{print "A";}
}
print"\n";
