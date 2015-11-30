#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl.pl
#
#        USAGE: ./perl.pl  
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
#      CREATED: 11/25/2015 09:10:14 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use DBI;

my	$driver="DBI:mysql";
my	$database="test";
my	$username="test";
my	$password="123456";
my	$host="localhost";
my	$port="3306";

my	$dbh=DBI->connect("$driver:$database:$host:$port",$username,$password) or die "failed connect".DBI->errstr;
if ($dbh) {
	print "connect mysql successful\n";
}
else {
	print "connect mysql failed\n";
}

my	$sth=$dbh->prepare("select * from perladdres where city like ?") or die "prepare failed".$DBI::errstr;
$sth->bind_param(1,"sh%");
$sth->execute();
$sth->dump_results();
#$sth->bind_param(1,$value,{TYPE=SQL_INTEGER}) hash
#$sth->bind_param(2,$value,SQL_INTEGER) DBI constant

my $row=$dbh->do("insert into perladdres(name,city) values('zhou','wuhan')");
print "$row\n"; #do() return affected rows
$dbh->do("insert into perladdres(name,city) values(?,?)",undef,'sun','wuxi');

























































































