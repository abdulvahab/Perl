#!/usr/bin/perl
# connecting config
my $dbname = 'census';
my $host = 'aws-us-east-1-portal.8.dblayer.com';
my $port = 10221;
my $username = 'user';
my $password = 'password';

# Create DB handle object by connecting
my $dbh = DBI -> connect("dbi : Pg : dbname = $dbname; host = $host; port=$port",
                            $username,
                            $password,
                            {AutoCommit => 0, RaiseError => 1}
                        ) or die $DBI :: errstr;
# Trace to a file
$dbh -> trace(1, 'tracelog.txt');

# Drop table if it already exists
my $SQL = "DROP TABLE IF EXISTS population";
my $sth = $dbh -> do(SQL);
$dbh->commit or die $DBI :: errstr;
