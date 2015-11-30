#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: list_drivers.pl
#
#        USAGE: ./list_drivers.pl  
#
#  DESCRIPTION: 
#
#      OPTIONS: ---
# REQUIREMENTS: ---
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: YOUR NAME (), 
# ORGANIZATION: 
#      VERSION: 1.0
#      CREATED: 11/20/2015 01:58:13 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use DBI;

#listing currently installed drivers
my	@drivers;
@drivers=DBI->available_drivers();
foreach my $dbd (@drivers) {
	print "$dbd drivers is avialable\n";
}
print "\n";
#the connect() methods  $dbh=$database_handle
#$dbh=DBI->connect("DBI:<RDMS>:<database>","<username>","password") or die "failed connect to mysql because:$DBI->errstr"
#$dbh=DBI->connect($dsn,$username,$passwd,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });

my	$dsn="DBI:mysql:test";
my	$username="test";
my	$password="123456";
{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";

#sth=sql_statement_handle
my	$sth=$dbh->prepare("select * from perlinks") or die "can't prepare sql statement".DBI->errst;
$sth->execute();
print "select execute and dump the results\n";
$sth->dump_results();
$sth->finish();
$dbh->disconnect();
}

{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";

my	$sth=$dbh->prepare("select address from perlinks") or die "can't prepare sql statement".DBI->errst;
$sth->execute();
my	$count=0;
print "select execute and fetch a row as a hash:\n";
while (my $row=$sth->fetchrow_hashref()) {
	print "name:$row->{address}\n";	
	$count++;
}
$sth->finish();
$dbh->disconnect();
}


{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";

my	$sth=$dbh->prepare("select num,address from perlinks") or die "can't prepare sql statement".DBI->errst;
$sth->execute();
print "select execute and fetch a row as a array:\n";
while (my @rows=$sth->fetchrow_array()) {
	print "name=$rows[0]\t";	
	print "address=$rows[1]\n";
}
$sth->finish();
$dbh->disconnect();
}


{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";
my	$sth=$dbh->prepare("select * from perlinks") or die "can't prepare sql statement".DBI->errst;
$sth->execute() or die "couldn't execute query:$DBI::errstr\n";
print "select execute and fetch a row as a array:\n";
my	$matches=$sth->rows();
unless ($matches) {
	print "sorry,there are no matches\n";
} else {
	print "found the matches\n";
	while (my @row=$sth->fetchrow_array()) {
		print "@row\n";
	}
}
$sth->finish();
$dbh->disconnect();
}


{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";
my	$sth=$dbh->prepare("select * from perlinks") or die "can't prepare sql statement".DBI->errst;
$sth->execute() or die "couldn't execute query:$DBI::errstr\n";
print "the first sql query:\n";
while (my ($id,$name)=$sth->fetchrow_array()) {
		print "$name id is $id\n";
}
$sth->finish();
$dbh->disconnect();
}


{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";
my	$sth=$dbh->prepare("select address from perlinks where address=?") or die "can't prepare sql statement".DBI->errst;
print "the sql query use a placeholder:\n";
my	$address="www.jd.com";
$sth->execute($address) or die "couldn't execute query:$DBI::errstr\n";
while (my @var=$sth->fetchrow_array()) {
		print "address=$var[0]\n";
}
$sth->finish();
$dbh->disconnect();
}

{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";
my	$sth=$dbh->prepare("select num,address from perlinks where num=?") or die "can't prepare sql statement".DBI->errst;
print "input column number you want to query(1-11):\n";
chomp(my $num=<>);
$sth->execute($num) or die "couldn't execute query:$DBI::errstr\n";
while (my @var=$sth->fetchrow_array()) {
		print "num=$var[0]\n";
		print "address=$var[1]\n";
}
$sth->finish();
$dbh->disconnect();
}

=begin
{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";
my	$sth=$dbh->prepare("insert into") or die "can't prepare sql statement".DBI->errst;
print "input column number you want to query(1-11):\n";
chomp(my $num=<>);
$sth->execute($num) or die "couldn't execute query:$DBI::errstr\n";
while (my @var=$sth->fetchrow_array()) {
		print "num=$var[0]\n";
		print "address=$var[1]\n";
}
$sth->finish();
$dbh->disconnect();
}
=cut

{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";
print "the sql query use a placeholder with quote:\n";
my	$address="www.my's.com";
$address=$dbh->quote($address);
print "$address\n";
my	$sth=$dbh->prepare("select * from perlinks where address=$address") or die "can't prepare sql statement".DBI->errst;

$sth->execute() or die "couldn't execute query:$DBI::errstr\n";
while (my @var=$sth->fetchrow_array()) {
		print "num=$var[0]\n";
		print "address=$var[1]\n";
}
$sth->finish();
$dbh->disconnect();

}


{
my $dbh=DBI->connect($dsn,$username,$password,{ PrintError => 0, RaiseError => 1, AutoCommit => 0 });
print "connect to mysql successfully\n";
print "the sql query use a placeholder with quote:\n";
my	$sth=$dbh->prepare("select num,address from perlinks") 
	                  or die "can't prepare sql statement".DBI->errst;
$sth->execute() or die "couldn't execute query:$DBI::errstr\n";
my ($num,$address); #scalars will be bound to columns
$sth->bind_columns(\$num,\$address); #scalar references
while ($sth->fetch()) { #fetch a row as return column values as scalar
		printf "%d:%s\n",$num,$address;
}
$sth->finish();
$dbh->disconnect();

}








