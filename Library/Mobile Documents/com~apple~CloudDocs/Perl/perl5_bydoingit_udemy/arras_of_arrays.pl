#¡/usr/local/bin/perl
use strict;    # Force to declare  variable
use warnings;  # For Debugging
use 5.18.0;    # Perl version
use Data::Dumper;
$| = 1;        #turn off output buffering
sub main{
  my @animals = ('Dog', 'Cat', 'Mouse');
  my @fruits = ('Apple', 'Banana', 'Orange');
  my @values;
  push @values, \@animals;
  push @values, \@fruits;
  print Dumper(@values);
  print @values ->[1]."\n";
  my $values_ref = \@values;
  print Dumper($values_ref -> [1])."\n";
}
main()
