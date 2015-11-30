#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: subrootine.pl
#
#        USAGE: ./subrootine.pl  
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
#      CREATED: 10/28/2015 03:06:00 PM
#     REVISION: ---
#===============================================================================

#use strict;
use warnings;
use utf8;

sub hello {
	print "hello perl\n"; #
}
hello;  #if defined the subroutines beforehand can omit "&"

sub hellos {
	my	$name=shift @_;
	print "hello $name\n";
}
hellos("yaoxiang");
&hellos("world");
do hellos(123); #use do call the subroutine

sub sub1 {
	my ($num1,$num2,$num3)= @_;
	my	$sum=$num1+$num2+$num3;
	print "$sum\n";
}
&sub1(1,2,3);

sub sub_add {
	my	$sum=$_[0]+$_[1];
	print "$sum\n";
}
&sub_add(1,2);
my	$sum=&sub_add(100,10);

sub sub_return {
	print "this is the subroutine return value\n";
    $aa+$bb;
}
($aa,$bb)=qw/10 11/;
$return_value=&sub_return;
print "\$return_value is $return_value\n";
$return_valuea=2*&sub_return;
print "\$return_valuea is $return_valuea\n";

$max_num=&max(11,23,43,97,213);
sub max 
{
	$num_max=shift @_;
	foreach  (@_) 
	{
		if ($_>$num_max) 
		{
			$num_max=$_;
		}
	}	
	$num_max; #return values
}
print "the max number is $max_num\n";












#子程序未定义参数时 传递的参数默认传给"@_" 可以通过$_[0],$_[1]访问
#
#
#












