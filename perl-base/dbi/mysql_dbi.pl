#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mysql_dbi.pl
#
#        USAGE: ./mysql_dbi.pl  
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
#      CREATED: 11/16/2015 01:35:35 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;
use DBI;

say "perl mysql connect demo";
#mysql databases Configuration
my	$dsn="DBI:mysql:test"; #dbname
my	$username="test";		#dbusername
my	$passwd='123456';		#dbpasswd

#connect to mysql db
=begin
my	%attr=(
	printerror => 0, ###don't report errors via warn()
	raiseerror => 1, ###do report errors via die()
);
my	$dbh=DBI->connect($dsn,$username,$passwd,\%attr);
=cut
my	$dbh=DBI->connect($dsn,$username,$passwd) or die ("error connecting to mysql:$DBI::errstr\n");

say "connect to mysql database";
=begin
my	@ddl=(
	"create table testa(id int not null auto_increment primary key,name varchar(20) not null) engine=innodb;",
	"create table testb(id int not null auto_increment primary key,city varchar(20) not null) engine=innodb;"
);
for my $sql(@ddl) {
	$dbh->do($sql);
}
say "all tables create successfully";
=cut

{
my	$sql="select * from perlinks";
my	$sth=$dbh->prepare($sql);
$sth->execute();
my	@results=();
while (my $result=$sth->fetch()) {
	push @results,[@{$result}];	
}
print (join(',',@$_),"\n") for (@results);
}

{
print "input you want insert into data:\n";
my $sth=$dbh->prepare("insert into perladdres(name,city) values(?,?)");
while (my $inputdata=<>) {
	chop($inputdata);
	last unless($inputdata);
	my ($name,$city)=split(/,/,$inputdata);
	$sth->execute($name,$city);
}






}












