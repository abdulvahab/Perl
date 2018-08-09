#¡/usr/local/bin/perl
use strict;    # Force to declare  variable
use warnings;  # For Debugging
use 5.18.0;    # Perl version
use Data::Dumper;
use LWP::Simple;
$| = 1;        #turn off output buffering
sub main{
  # Ranges
  # [0-9] any number
  # [a-z] any lower case
  # [A-Z] any upper case
  # [A-Za_z_0-9] - simply list alternative ,\any character wich has special meaning in Perl
  # [] will match one character so have to use quamtifier to match more than one character
  my $url = 'http://pycode.co.uk';
  my $content = get($url);
  unless(defined($content)) {
    die "Unreachable url: $url\n"
  }
  while($content =~ m|<\s*a\s+[^>]*href\s*=\s*['"]([^>'"]+)['"][^>]*>\s*([^<>]*)\s*</|sigx) {
    print "$2: $1\n";
  }
}
main();
print "The End\n"
