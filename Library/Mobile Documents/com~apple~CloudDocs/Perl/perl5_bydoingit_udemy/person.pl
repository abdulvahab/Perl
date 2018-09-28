#/usr/local/bin/perl
use strict;
use warnings;
use lib '/Users/admin/Library/Mobile Documents/com~apple~CloudDocs/Perl/perl5_bydoingit_udemy/Data';
use Person;

$| = 1;
sub main {
    my $person1 = new Person('Abdulvahab', 37);
    $person1 -> greet('Musu');
    my $person2= new Person('Musarratbanu',34);
    $person2 -> greet('Abdul');
}
main();