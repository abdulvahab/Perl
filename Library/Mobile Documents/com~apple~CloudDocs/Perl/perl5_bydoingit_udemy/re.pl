#!/usr/locl/bin/perl
use strict;
use warnings;
use 5.18.0;
$| = 1;
sub main{
  my $input = 'input.txt';
  open(INPUT, $input) or die("Input file: $input not found.\n");

  #my $output = 'output.txt';
  #open(OUTPUT, '>'.$output) or die("Can't create $output.\n");

  while(my $line = <INPUT>) {
    if ($line =~ /Name/) {
      print "\n";
      say $line;
    }
  }
  close(INPUT);
  #close (OUTPUT);
}
  main();
