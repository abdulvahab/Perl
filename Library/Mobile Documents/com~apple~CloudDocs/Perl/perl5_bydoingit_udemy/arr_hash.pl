#¡/usr/local/bin/perl
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
  unless(open(OUTPUT, '>'.$output)) {
    die"\nCannot create: $output";
  }
  my $header = <INPUT>;
  chomp $header;
  my @header = split /\s*,\s*/, $header;
  my @data;
  LINE: while(my $line = <INPUT>) {
    chomp $line;
    $line =~ /\S+/ or next LINE;
    $line =~ s/^\s*|\s*$//g;
    my @values = split /\s*,\s*/, $line;
    if (@values != 5 ){
      print "Invalid Entry: $line\n";
      next LINE;
    }
    foreach my $value(@values){
      if ($value eq '') {
        print "Invalid Entry: $line\n";
        next LINE;
      }
    }
    print "'$line'\n";
    my ($firstname, $lastname, $dob, $age, $saving) = @values;

    my %arr_hash =(
       "$header[0]" => $firstname,
       "$header[1]" => $lastname,
       "$header[2]" => $dob,
       "$header[3]" => $age,
       "$header[4]" => $saving,
       );
    push @data, \%arr_hash;
  }
  close INPUT;
  my $family_saving = 0;
  foreach my $data(@data) {
    print Dumper($data);
    print OUTPUT Dumper($data);
    $family_saving += $data -> {"Saving"};
  }
  print "Total Saving is : $family_saving\n";
  print OUTPUT "Total Saving is : $family_saving\n";
  close OUTPUT;
}
main();
