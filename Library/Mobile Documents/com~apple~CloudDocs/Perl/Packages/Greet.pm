package Greet;
use Exporter qw(import);
#@EXPORT_OK = qw(world universe);
@EXPORT = qw(world universe);
  sub world{
    print "Hello World.\n"
  }
  sub universe{
    print "Hello Universe.\n"
  }
return 1;
