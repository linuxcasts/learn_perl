#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: dbi_mysql.pl
#
#        USAGE: ./dbi_mysql.pl  
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
#      CREATED: 11/18/2015 04:01:15 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;
use DBI;

#DBI $object->methods(@arguments)
#$dbh database handle
#$sth sql statement handle

#select in perl DBI
#prepare() execute() fetch() finish() 
#insert update delete
#prepare() execute() 
#while (records to fetch from $sth) {
# fetch the current row from the cursor
# @columns=get the column values;
# print "fetched rows:@columns";
# }


my	@drivers=DBI->available_drivers;
print join(',',@drivers),"\n";

my	$data_source="DBI:mysql:test";
my	$username="root";
my	$password="123456";

#connect() will return a dbshadle
#my $dbh=DBI->connect($data_source,$username,$password) or die("error connect to mysql:$DBI::errstr\n");
my $dbh=DBI->connect($data_source,$username,$password,{AutoCommit=>1}) or die("failes connect to mysql:$DBI::errstr\n");
say "connected the mysql successfully";

{
#prepare a select statement return a named  $sth filehandle 
my	$sth=$dbh->prepare("select * from perlinks") or die ("can't prepare sql statement:$DBI::errstr\n");
$sth->execute(); #execute the sql statement
print "the data in db\n";
$sth->dump_results(); #display results of the execute
$sth->finish();
}


{
my	$sth=$dbh->prepare("select num,address from perlinks") or die ("can't prepare sql statement:$DBI::errstr\n");
$sth->execute(); #send the statement to database execute the sql statement
print "the data in table perlinks\n";
while (my @row=$sth->fetchrow_array()) { #fetchrow_array() retrun table's one column  use while loop read the tables columns
	print "num=$row[0]\n";               #use array to get the fetched data
	print "address=$row[1]\n";
}
print $sth->rows,"\n"; #rows return total columns
$sth->finish();   #release the $sth filehandle

$sth->execute();
while (my ($name,$type)=$sth->fetchrow_array) { #use scalar to get the fetched data
	print "$name type is $type\n";
}






}


{
my	$sth=$dbh->prepare("select num,address from perlinks") or die ("can't prepare sql statement:$DBI::errstr\n");
$sth->execute(); #send the statement to database execute the sql statement
my	$count=0;
print "the data in table perlinks\n";
while (my $row=$sth->fetchrow_hashref()) {#retrun table's one column use while loop read the tables columns
	print "num=$row->{num}\n";
	print "address=$row->{address}\n";
	$count++;
}
print $sth->rows; #rows return total columns
$sth->finish();   #release the $sth filehandle
#$sth->disconnect();#disconnect with database
}

{
my	$row=$dbh->do("delete from perlinks where num=3");
}

=begin
{
my $sth=$dbh->prepare("insert into perlinks(address) values(?)");
my	@array=qw/www.jd.com www.360.com www.google.com/;
foreach my $address (@array) {
	$sth->execute($address);
}
}
=cut

{
#my ($num,$address)=$dbh->selectrow_array("select num,address from perlinks");
#print "$num is $address\n";
	my	$sth=$dbh->prepare("select num,address from perlinks");
	$sth->execute();
	my	$array_ref=$sth->fetchall_arrayref();
	foreach my $row (@$array_ref) {
		my ($num,$address)=@$row;
		print "num is $num and address is $address\n";
	}
}






















