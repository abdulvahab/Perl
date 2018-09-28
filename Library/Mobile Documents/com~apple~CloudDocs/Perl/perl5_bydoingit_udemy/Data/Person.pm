package Person;
#use Exporter qw(import);
#@EXPORT = qw(new greet);
sub new {
    my $class = shift;

    my $self = {
        "name" => shift,
        "age" => shift
    };
    bless($self, $class);
    return $self;
}
sub greet{
    my ($self, $other) = @_;
    print "Assalamalykum " . $other . ". I am " . $self->{"name"} . " and I am " . $self->{"age"} . " years Old.\n"  
}
1;