#!/usr/bin/perl
use strict;
use warnings;
use 5.18.0;
use LWP::Simple;
sub main {
  say "Downoading.....";
  my $html = get("https://pycode.co.uk");
  say "$html\n";

  my $code = getstore("https://pycode.co.uk","pycode.html");
  my $logo = getstore("https://cdn.perl.org/perlweb/images/icons/header_camel.png","logo.png");
  if ($logo == 200){
  	say "Success";
  }
  else{
  	print "Failed";
  }
  say "Finished...";

}
main();
