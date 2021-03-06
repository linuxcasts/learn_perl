#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl_insert.pl
#
#        USAGE: ./perl_insert.pl  
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
#      CREATED: 11/18/2015 01:55:36 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use v5.10;

use DBI;

#mysql database configurations
my	$dsn="DBI:mysql:test";
my	$username="root";
my	$password="123456";

say "perl mysql connect and create table demo";

#connect to mysql
my	%attr=(printerror => 0,raiserror => 1);
my	$dbh=DBI->connect($dsn,$username,$password,\%attr);

#create tables statement
my	@ddl=(
	#create table perlmysql
	"create table perlmysql (id int null primary key auto_increment,name char(10) not null) engine=innodb;" ,
	#create table perlinks
	"create table perlinks (num int null primary key auto_increment,address varchar(30) not null) engine=innodb;"
);
#execute all create table statement
for my $sql(@ddl) {
	$dbh->do($sql);
}
say "all tables created successfully";


say "perl mysql insert demo";
#get users's input links
my	@links=get_links();

#insert data into table perlinks 
my	$insert="insert into perlinks(address) values(?)";
my	$stmt=$dbh->prepare($insert);

#execute the query 
foreach my $link (@links) {
	if ($stmt->execute($link->{address})) {
		say "link $link->{address} inserted successfully";
	}
}
$stmt->finish();

sub get_links {

	my	$cmd = '';
	my	@links;
	#get links from command line
	my($address);

	do{
	say "address:";
	chomp($address=<STDIN>);

	my	%link=(address=>$address);
	push(@links,\%link);
	print "do you want insert another link (Y or N)\n";
	chomp($cmd=<STDIN>);
	$cmd=uc($cmd);
	} until($cmd eq 'N');
	return @links;
}

















