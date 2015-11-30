#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: package.pl
#
#        USAGE: ./package.pl  
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
#      CREATED: 11/04/2015 01:35:12 PM
#     REVISION: ---
#===============================================================================

use strict "vars";
use warnings;
use utf8;

our (@friend,@dogs,$key,$value);
my ($name,$pal,$money);
$name = "yaoxiang";
@friend =qw/python perl php/;
@dogs =qw/red whilte yellow/;
local $main::dude="centos";
$pal="linda";
$money=199.98;
while (($key,$value)=each (%main::)) {
	print "$key:\t$value\n";
}



