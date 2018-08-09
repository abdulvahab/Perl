#¡/usr/local/bin/perl
use strict;    # Force to declare  variable
use warnings;  # For Debugging
use 5.18.0;    # Perl version
use Data::Dumper;
use LWP::Simple;
$| = 1;        #turn off output buffering
sub main{
  my $website = 'https://pycode.co.uk';
  my $content = get($website);
  unless(defined($content)) {
    die "$website : Not reachable\n"
  }
  my $html_tag = 'body';
  $content =~ m|<\s*$html_tag\s*[^>]*>\s*(.+)<\s*\/$html_tag\s*>|sig;
  #my @tag_content = $content =~ m|^\s*$html_tag[0]\s*(\n|^).*?(?=\n|$)$html_tag[1]|sig;
  if($1 eq '') {
    print "No Match\n";
  }
  else{
      print $1 ."\n";
  }
}
main();
