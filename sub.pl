#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sub.pl
#
#        USAGE: ./sub.pl  
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
#      CREATED: 10/29/2015 09:10:21 AM
#     REVISION: ---
#===============================================================================

#use strict;
#use warnings;
use utf8;

sub add {
	my	$result=$_[0]+$_[1];
	print "the result is $result\n";
}
&add(3,2);

sub mius{
	my ($numa,$numb)=@_;
	my	$result=$numa-$numb;
	print "the mius is $result\n";
}
&mius(10,100);

sub adda {
	my	$numa=shift;
	my	$numb=shift;
	my	$result=$numa*$numb;
	print "the result is $result\n";
}
&adda(9,8);

sub addb {
	my	$result;
	while (@_) {
		$result += shift;
	}
	print "result:$result\n";
}
&addb(1);
&addb(1,2);
&addb(1,2,3);
&addb(1,2,3,4,5);
my	@array=qw/1 10 100 99 20/;
&addb(@array);

sub greeting {
	if (@_ == 2) {
		my ($numa,$numb)=@_;
		print "@_\n";
	}
	elsif(@_ == 3) {
		my ($numa,$numb,$numc)=@_;
		print "@_\n";
	}
	else
	{
		print "@_\n";
	}
}
&greeting("hello","world");
&greeting(1,2,3);
&greeting("a","b","c","d");

sub max {
	my $maxnum=shift @_;
	foreach (@_) {
		if ($_ > $maxnum) {
			$maxnum=$_;
		}
	}
	$maxnum;
}
print &max(3,6,13,345,222);
print &max(); print "\n";

my	@names=qw/yao liu li wang zhao he/;
my $result=&which_element("wang",@names);
sub which_element {
	my ($what,@array)=@_;
	foreach (0..$#array) {
		if ($what eq $array[$_]) {
			return $_;
		}
	}
	-1;
}
print $result,"\n";























