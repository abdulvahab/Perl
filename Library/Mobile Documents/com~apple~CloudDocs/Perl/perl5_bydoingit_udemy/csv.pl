#!/usr/local/bin/perl
use strict;    # Force to declare  variable
use warnings;  # For Debugging
use 5.18.0;    # Perl version
use Data::Dumper;
$| = 1;        #turn off output buffering
sub main{
  my $input = 'input.csv';
  my $output = 'output.csv';
  unless(open(INPUT, $input)) {
    die "\nCannot open $input\n";
  }
  #unless(open(OUTPUT, '>'.$output)){
  #  die "/nCan not Create: $output";
  #}
  <INPUT>;
  #my @lines;
  #my @lines_new;
  my @array;
  #my $count = 0;
  #my @values;
  while(my $line = <INPUT>) {
    chomp $line;
    #print "'$line'\n";
    my @values = split ', ',$line;
    #say join '| ',@values;
    #print Dumper(@values);
    #print OUTPUT "First name: $values[0]\nLast name: $values[1]\n";
    #$lines[$count] = $line;
    #$count++;
    #push @lines_new, $line;
    #say "@lines" ;
    #foreach $line(@lines_new){
      #say $line;
    #}
    push @array, \@values;
  }
  close INPUT;
  print $array[1][0] . "\n";
  print Dumper(@array);

}
main();
