#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: map.pl
#
#        USAGE: ./map.pl  
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
#      CREATED: 11/27/2015 03:51:14 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use v5.10;

#USAGE:map expr,list
#USAGE:map block list

my	@array=('1-one','2-two','3-three','4-four','5-five');
my	%hash=map split(/-/),@array;
print map{"$_=>$hash{$_}\n"} keys %hash;

my	@num=map $_ ** 2, 1 .. 10;
print "@num\n";

my	@string=qw/this is a perl script/;
@string=map {uc $_} @string;
print "@string\n";








