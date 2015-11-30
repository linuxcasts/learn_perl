#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: dbi_summary.pl
#
#        USAGE: ./dbi_summary.pl  
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
#      CREATED: 11/23/2015 01:07:32 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use DBI; #load DBI module

#connecting to a database
$db_handle=DBI->connect(dbi:$data_source,$username,$password) or die $DBI::errstr;
$db_handle=DBI->connect(dbi:$data_source,$username,$password,\%attribs) or die $DBI::errstr;
$auto=$dbh->{automatic}; 
$dbh->{PrintError}=0; disable printerror
$dbh->{RaiseError}=1; enable raiseerror


#connecting a remote database
$dbh=DBI->connect('dbi:mysql:$database:$hostname:$port','$user','$passwd');
$dbh=DBI->connect('dbi:mysql:test:db.myserver.com:3077','user','passwd') or die "error:$DBI::errstr";

#sql query
#prepare a handle to a sql query
#execute the query on the database
#assuming success we fetch the results
#finish telling the database we're done
my $dbh=DBI->connect(dbi:$data_source,$username,$password) or die $DBI::errstr;
my $sth=$dbh->prepare("select * from tablename") or die "prepare failed:$DBI::errstr";
$sth->execute() or die "couldn't execute query:$DBI::errstr";
while (($column1,$column2)=$sth->fetchrow_array) {
	print "$column1 value is $column2\n";
}
$sth->finish();
$sth->disconnect();

#create a table
my $dbh=DBI->connect(dbi:$data_source,$username,$password) or die $DBI::errstr;
my $sth=$dbh->prepare("create table tablename
	id int null primary key auto_increment,
	name char(10) not null,
	city char(20) not null,
	address varchar(20) not null")
$sth->execute();
$sth->finish();
print "the table are created\n";

#insert data into table
my $rows=$dbh->do("insert into table(column1,column2) values(value1,value2)") or die "couldn't insert:$DBI::errstr";
print "$rows row(s) added into table\n";


#fetching rows into arrays
my	@record=$sth->fetchrow_array();
while (my @row=$sth->fetchrow_array()) {
	print "@row\n";
	print "$row[0] $row[1]\n";
}
my	@results=();
while (my @result=$sth->fetchrow_array()) {
	push @results,\@result;
}

#fetching rows into references
while (my $row_ref=$sth->fetchrow_arrayref:) {
	print "@{$row_ref}\n";
	print "$row_ref->[0] $row_ref->[1]\n";
}
while (my $hash_ref=$sth->fetchrow_hashref()) { #less fetchall_arrayref
	print "$hash_ref->{firstname} $hash_ref->{secondname}\n";
}

#fetchall_arrayref
my $table=$sth->fetchall_arrayref();
for my $i (0 .. $#{$table}) {
	for my $j (0 .. $#{$table->[$i]}) {
		print "$table->[$i][$j]\n";
	}
	print "\n";
}
	





#binding columns
$sth=$dbh->prepare("select firstname,secondname from table where column=?") or die "prepare:$DBI::errstr";
$sth->execute("value") or die "error";
$sth->bind_col(1,\$first); #bind column 1 to $first
$sth->bind_col(2,\$second);
print "match $second,$first\n" while $sth->fetch();

$sth->bind_param(1,'value'); #bind a value to the first placehodler
$sth->execute();
while (my @result=$sth->fetchrow_array()) {
	print "$result[1]:$result[0]\n";
}




#fetching all results
#retrieve all results as an array of array
my	@results=$sth->fetchall_arrayref();
my	@results=$sth->fetchall_arrayref([]); #supply empty list reference
#retrieve all results as an array of hash
my	@results=$sth->fetchall_arrayref({}); #supply empty hash reference

#retrieve the first three columns of each row in an array of array
my	@results=$sth->fetchall_arrayref([0..2]);
#retrieve the first and last two columns of each row in an array of array
my	@results=$sth->fetchall_arrayref([0,-2,-1]);
#retrieve the first and last name columns as an array of hash
my	@results=$sth->fetchall_arrayref({first=>1,last=>1}); #supply empty hash reference








































