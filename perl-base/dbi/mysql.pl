#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: mysql.pl
#
#        USAGE: ./mysql.pl  
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
#      CREATED: 11/23/2015 03:39:52 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use DBI;
use Data::Dumper;

print "please input mysql username\n";
chomp(my $user=<STDIN>);
print "please input database passwd\n";
chomp(my $passwd=<STDIN>);
print "please connect daname\n";
chomp(my $dbname=<STDIN>);

my	$dbh=DBI->connect("dbi:mysql:database=$dbname;host=localhost;port=3306","$user",$passwd)
            	or die "can't connect to mysql:$DBI::errstr";
print "connect mysql successful\n";

{
my	$sql01="select * from perladdres";
my	$sth=$dbh->prepare($sql01);
$sth->execute();
print "select data from perladdres:\n";
while (my $list=$sth->fetchrow_hashref()) { #fetch data by a reference pointing to hash table return $row_hashref
	print "$list->{id}\t$list->{name}\t$list->{city}\n";	
}
}
=begin
my	$stmt="select column1,column2 from table";
my	$sth=$dbh->prepare($stmt);
$sth->execute();
while (my $records_ref=$sth->fetchrow_hashref()) {
	print "$records_ref->{column1} by $records_ref->{column2}\n";
}
$sth->finish();
=cut


{
my	$sql02="select num,address from perlinks";
my $sth=$dbh->prepare($sql02);
$sth->execute();
print "select data from perlinks:\n";
#while (my $row_ref=$sth->fetchrow_arrayref) {
#	print "@{$row_ref}\n";
#}
while (my $array_ref=$sth->fetchrow_arrayref) { #fetch data by a reference pointing to array return $row_arrayref
	print "column1:$array_ref->[0]\t column2:$array_ref->[1]\n";
}
}
=begin
my	$stmt="select column1,column2 from table";
my	$sth=$dbh->prepare($stmt);
$sth->execute();
while (my $records=$sth->fetchrow_arrayref()) {
	my ($column1,$column2)=@$records;
	print "column1 by column2\n";
}
$sth->finish();
=cut

{
my	$sql03="select * from perladdres";
my	$sth=$dbh->prepare($sql03);
$sth->execute();
print "select data from perladdres:\n";
while (my @row=$sth->fetchrow_array) { #fetch data by an array retrun @row
	print "$row[0]\t$row[1]\t$row[2]\n";	
}
}
=begin
my	$stmt="select column1,column2 from table";
my	$sth=$dbh->prepare($stmt);
$sth->execute();
while (my ($column1,$column2)=$sth->fetchrow_array()) {
	print "$column1 by $column2\n";
}
$sth->finish();
=cut

{
my	$sql04="select * from perladdres";
my	$sth=$dbh->prepare($sql04);
$sth->execute();
print $sth->dump_results,"\n"; #return print
}

{
my	$sql05="select * from perlinks";
my	$sth=$dbh->prepare($sql05);
$sth->execute();
my	$resultset_arrayref=$sth->fetchall_arrayref; #return the entire results set
foreach my $row (@$resultset_arrayref) {
	my ($num,$address)=@$row;
	print "num is $num and address is $address\n";
}
}
=begin
$sth->fetchall_arrayref() #the function captures the results of a statement and returns a reference to the data
the results are a complex data structure:an array of reference with each reference to an array for each row of data retried
my	$stmt="select column1,column2 from table";
my	$sth=$dbh->prepare($stmt);
$sth->execute();
my	$records=$sth->fetchall_arrayref();
$sth->finish();
foreach my $record (@$records) {
	my ($column1,$column2)=@$records;	
	print "$column1 by $column2\n";
}
=cut

{
#sth->fetchall_hashref(key_column)
my	$sql06="select num,address from perlinks";
my	$sth=$dbh->prepare($sql06);
$sth->execute();
my	$resultset_hashref=$sth->fetchall_hashref('num'); #return the entire  set
#print Dumper($resultset_hashref);
foreach my $row (keys %$resultset_hashref) {
	my $num=$resultset_hashref->{$row}->{'num'};
	my $address=$resultset_hashref->{$row}->{'address'};
	print "num=$num address=$address\n";
}
}
=begin
$sth->fetchall_hashref() #the function captures the results of a sql statement and return a reference to the data
results are a complex data structure:a reference to a hash, name of the key column as key ,value of the key column as value
my	$stmt="select column1,column2 from table";
my	$sth=$dbh->prepare($stmt);
$sth->execute();
my	$records=$sth->fetchall_hashref('column1');
foreach my $row (keys %$records) {
	my $column1=$records->{$row}->{'column1'};
	my $column2=$records->{$row}->{'column2'};
	print "column1=$column1 column2=$column2\n";
}
=cut

{
#update statement
print "perl mysql update data demo\n";
my  $sql_update=qq/update perlinks set address=? where num=?/;
my	$sth=$dbh->prepare($sql_update);
my  $num=22;
my	$address="www.suning.com";
#bind the corresponding parameter
$sth->bind_param(1,$address);
$sth->bind_param(2,$num);
$sth->execute();
print "the record has been updated successful\n";
}

{
sub delete_one_row {
	my ($dbh,$num)=@_;
	my	$sql_delete="delete from perlinks where num=?";
	my	$sth=$dbh->prepare($sql_delete);
	return $sth->execute($num);
}
#delete 1 row with id 1
print "perl mysql delete data demo\n";
print "link with num 7 deleted successful\n" if delete_one_row($dbh,7);

sub delete_all_row {
	my ($dbh)=@_;
	my $sql_deleteall="truncate table perltest";
	my $sth=$dbh->prepare($sql_deleteall);
	return $sth->execute();
}
#delete all rows in table
print "all links are deleted successful\n" if delete_all_row($dbh);
}

{
print "perl mysql create table demo\n";
#create tables statement
my	@ddl=(
	"create table tablea(id int not null primary key auto_increment,names char(20) not null)",
	"create table tableb(num int not null primary key auto_increment,city char(20) not null)"
	);
#execute all create table statements
for my $sql (@ddl) {
	$dbh->do($sql); #use do() method for executing non-select statement that does not return a result set
}
print "all table are created successful\n";
}

{
#$sth->fetch(); return a reference to an array of one row from the results of a statement handle
my $sql_stmt01="select num,address from perlinks";
my $sth=$dbh->prepare($sql_stmt01);
$sth->execute();
my ($num,$address);
$sth->bind_columns(\$num,\$address);
while ($sth->fetchrow_array()) {
	print "$num by $address\n";
}
}


{
use DBI::Const::GetInfoType;
my $version=$dbh->get_info($GetInfoType{SQL_DBMS_VER});
print "mysql version is $version\n";
my	$alive=$dbh->ping();
if ($alive) {
	print "mysql connection is still alive\n";
}
else {
	print "mysql connect is not alive\n";
}
}

{
#$dbh->selectall_arrayref($statement[,\%attr][,@bind_values]) #return a reference to an array
my	$sql_stmt="select num,address from perlinks where num=?";
my	$records=$dbh->selectall_arrayref($sql_stmt,undef,'8');
foreach my $record (@$records) {
	my ($num,$address)=@$record;
	print "$num is $address\n";
}
}

{
#$dbh->selectall_hashref($statement,$key_field[,\%attr][,@values]) #return a reference to a hash of reference to hashes
my $sql_stmt="select * from perlinks";
my $records=$dbh->selectall_hashref($sql_stmt,'num');
foreach my $record (keys %$records) {
	print "$records->{$record}{num},$records->{$record}{address}\n";
}
}

{
my $sql_stmt="select * from perlinks";
my $records=$dbh->selectcol_arrayref($sql_stmt);
foreach my $record (@$records) {
	print "$record\n";
}
}


{
#print Dumper[$dbh->selectrow_array('select max(num),min(num) from perlinks')];
my	$sql07="select num,address from perlinks where address=?";
my	($num,$address)=$dbh->selectrow_array($sql07,undef,'www.jd.com');
print "$num is $address\n";
}
=begin
my	$sql_stmt="update table set column1=? where column2=?";
my	@values=('value1','value2');
$dbh->do($sql_stmt,undef,@values);
print "rows changed : $sql_stmt\n";
=cut

{
my	$sql07="select num,address from perlinks where address=?";
my	$records=$dbh->selectrow_arrayref($sql07,undef,'www.sougou.com');
my  ($num,$address)=@$records;
print "$num is $address\n";
}

{
my	$sql07="select num,address from perlinks where address=?";
my	$records_ref=$dbh->selectrow_hashref($sql07,undef,'www.google.com');
print "$records_ref->{num} is $records_ref->{address}\n";
}

{
my	$sth=$dbh->prepare("insert into perladdres(name,city) values(?,?)");
=begin
my	$name="zhang";
my	$city="shanxi";
$sth->execute($name,$city);
print "all data are inserted into table\n";
#insert into mutilines
my	@rows=(['li','shandong'],
		['zhu','shanghai'],
		['yang','nanjing']
);
foreach my $row (@rows) {
	my $name=$row->[0];
	my $city=$row->[1];
	 $sth->execute($name,$city);
}
=cut
}














