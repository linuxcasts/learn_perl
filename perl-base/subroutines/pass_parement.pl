#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: pass_parement.pl
#
#        USAGE: ./pass_parement.pl  
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
#      CREATED: 11/16/2015 01:08:50 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my	$a=10;
my	$b=20;

do_some($a,$b);#passing parameters by references
print "after calling subroutines a=$a and b=$b \n";
sub do_some {
	$_[0]=1;
	$_[1]=2;
}

my	$c=10;
my	$d=10;

do_somes($c,$d); #passing parameters by values
print "after calling subroutines c=$c and d=$d \n";
sub do_somes {
	my ($p1,$p2)=@_;
	$p1=1;
	$p2=2;
}


my	@array=(1,3,5,7,9,10);
my	$max=&max(\@array);
print "max number of @array is $max\n";
sub max {
	my	$aref=$_[0];
	my	$k=$aref->[0];
	for (@$aref) {
		$k=$_ if($k <$_);
	}
	return $k;
}



