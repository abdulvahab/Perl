#¡/usr/local/bin/perl
=pod
Developed By:Abdulvahab Kharadi
Date: 09/08/2018
=cut
use strict;    # Force to declare  variable
use warnings;  # For Debugging
use 5.18.0;    # Perl version
use Data::Dumper;
use LWP::Simple;
use Getopt::Std;
$| = 1;        #turn off output buffering
sub main{
  my %opts;
  getopts('af:rd:',\%opts);
  if(!check(\%opts)){
    usage();
    exit();
  }
  my $dir = $opts{'d'};
  my @files = get_files($dir);
  my @src_files;
  my @doc_files;
  foreach my $file(@files){
    if($file =~ /\.pl|\.html|\.py$/){
      push @src_files, $file;
    }
    elsif($file =~ /\.csv|\.txt$/){
      push @doc_files, $file;
    }
    else{
      print "$file: Unknown File\n"
    }
  }
  print "Source Files:\n";
  print Dumper(\@src_files);
  print "Documents Files:\n";
  print Dumper(\@doc_files);
}
sub get_files {
  my $dir = shift;
  unless(opendir(DIR,$dir)){
    die "Unable to open: $dir\n";
  }
  my @files = readdir(DIR);
  #print Dumper(@files);
  close(DIR);
  return @files;
}

sub check {
  my $opts_ref = shift;
  my $f = $opts_ref->{'f'};
  my $a = $opts_ref->{'a'};
  my $r = $opts_ref->{'r'};
  my $d = $opts_ref->{'d'};
  #print "$a,$r,$f\n";
  unless(defined($d)){
    print "provide directory name \n";
    return 0;
  }
  return 1;
}
sub usage{
  print <<USAGE;
usage : perl cli.pl <options>
        option -r and -f are compulsary
        -f must followed by file name with .csv extention
        -a is optional
        example: perl cli.pl -r -f input.csv -a
        expmple: perl cli.pl -r -f input.csv
        -d specify directory from where your want to use file

USAGE
}
main();

=pod
sub credit{
  print "Copyright: Abdulvahab Kharadi, 2018.\n\n\n";
}
credit();
=cut
=pod
  print Dumper(@ARGV);
  print $ARGV[0]. "\n";
  print Dumper(%opts);
  print "$opts{'f'}\n";
=cut
=pod
  if ($f !~ /\.csv$/){
    print "Use .csv file\n";
    return 0;
  }
=cut
