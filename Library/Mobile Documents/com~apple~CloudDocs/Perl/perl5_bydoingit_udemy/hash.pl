#¡/usr/local/bin/perl
use strict;    # Force to declare  variable
use warnings;  # For Debugging
use 5.18.0;    # Perl version
use Data::Dumper;
$| = 1;        #turn off output buffering
sub main{
  my %months = (
    "Jan" => 1,
    "Feb" => 2,
    "Mar" => 3,
    "Apr" => 4,
    "Jul" => 7,
     );
  my %days = (
    "Sun" => 0,
    "Mon" => 1,
    "Sat" => 6,
  );
  print $months{"Jul"} ."\n";
  my @months = sort keys %months;
  print Dumper(@months);

  foreach my $month(@months) {
    my $value = $months{$month};
    print "$value : $month\n";
    }

  while(my ($key,$value) = each %months) {
    print "$key : $value\n"
  }
  my ($name,$age) = ('Abdulvahab', 37);
    print "\$name: $name\n"."\$age:$age\n";
  push(my @hashes, \%months);
  $hashes[1] =\%days;
  print Dumper(@hashes);
  print $hashes[1]{"Sat"} . "\n";
}
main();
