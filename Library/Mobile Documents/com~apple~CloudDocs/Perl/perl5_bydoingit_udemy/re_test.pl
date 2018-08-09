#¡/usr/local/bin/perl
use strict;
use warnings;
use 5.18.0;
$| = 1;        #turn off output buffering
sub main{
  #Excersie 1
  print "Hello World:\n";

  #Excersie 2
  my @emails = ('vahab_n@yahoo.com',
             'vahab.n@gmail.com',
             'vahab_n@hotmail.com1',
             'ppooxford@live44.com',
             'ccoxford123@live.co.uk',
             '@yahoo.com',
             'vahab.yahoo@yahoo.com',
             'vahab@yahoo.',
             'vahab@.com',
             );
  foreach my $email(@emails){
    if($email =~ /(\w+^\.)@(\w+)\.(\w+)/){
      print "$email -> is Valid\n";
    }
    else{
      print "$email -> is Invalid\n";
    }
  }
  #Excersise 3:
  my $text = 'Printer code is AB4a';
  if ($text =~ /(\w+)\s.*?(\b\w{2}\d{2,6}\b)/){
  #if ($text =~ /(\w+)\s.*?\bis\s\b(.+)/){
    print "$1: $2\n";
  }
  else {
    print "Not found or Invalid\n";
  }

}
main();
