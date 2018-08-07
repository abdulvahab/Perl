#!/usr/locl/bin/perl
use strict;
use warnings;
use 5.18.0;
#$| = 1;
sub main{
  my $file = 'lgo.png';
  if(-f $file) {
    say "$file-File Found";
  }
  else {
    say "$file :File not found";
  }

  my @files = ('logo.png', 'hello.pl', 'a.html','Tutorial2.txt','pycode.html',);
  foreach my $file(@files) {
    if(-f $file) {
      say "$file: File Found";
    }
    else {
      say "$file: File not found";
    }
  }
}

main();
