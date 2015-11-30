#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: variable_ref.pl
#
#        USAGE: ./variable_ref.pl  
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
#      CREATED: 11/16/2015 11:38:21 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

my	$scalar="perl";
my	$refscalar=\$scalar;
print $scalar,"\n",$refscalar,"\n",$$refscalar,"\n";

my	@array=(1..5);
my	$refarray=\@array;
print @array,"\n",$refarray,"\n",@$refarray,"\n";
say $refarray->[0];

my	%hash=(
	mon => 1,
	tue => 2,
	wed => 3,
	thr => 4,
	fri => 5,
	sat => 6,
	sun => 7,
);
my	$refhash=\%hash;
print %hash,"\n",$refhash,"\n",%$refhash,"\n";
say $refhash->{mon};















