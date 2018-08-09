#!/usr/locl/bin/perl
use strict;
use warnings;
use 5.18.0;
$| = 1;
sub main{
  my $input = 'input.txt';
  open(INPUT, $input) or die("Input file: $input not found.\n");

  my $output = 'output.txt';
  open(OUTPUT, '>'.$output) or die("Can't create $output.\n");

  while(my $line = <INPUT>) {
    if ($line =~ /(\w*?)\s(\w*?),.(\d+.\d+.\d+),.(\d+)/) {
      #$line =~ s/Abdul./Musarratbanu/ig;
      print "\n";
      print "First Name: $1\nLast Name: $2\nDOB: $3\nAge: $4\n";
      say OUTPUT "First Name: $1\nLast Name: $2\nDOB: $3\nAge: $4\n";
    }
  }
  close(INPUT);
  close (OUTPUT);
}
  main();
# \d digit
# \s space
# \S Nonspace
# \w Alphanumeric
# * zero or more of preceding, as many as possible
# *? zero or more of preceeding, as few as possible
# + one or more of preceeding, as many as possible
# +? one or more of preceeding, as few as possible
# ? zero or one of preceeding
# {5} of preceeding
# {3,6} at least three and most 6 of preceding
# {3,} at least three of preceeding
#
#
