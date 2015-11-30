#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: string_function.pl
#
#        USAGE: ./string_function.pl  
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
#      CREATED: 10/30/2015 08:49:23 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

my	$stra = 'BasH';
say lc $stra;
say lcfirst $stra;
say uc $stra;
say ucfirst $stra;
say length $stra;

my	$strb = "The perl is so good";
say index $strb,"perl";
say index $strb,"python";
say index $strb,"The";
say index $strb,'e';
say index $strb,'e',1;
say index $strb,'e',3;
say index $strb,'e',6;
say length $strb;
say rindex $strb,"is ";

say substr $strb,4,4;
say substr $strb,4;
say substr $strb,-4;
say substr $strb,-4,2;

my	$strc = substr $strb,4,4,"bash";
say $strc;
say $strb;

my	$strd="linux=is=so=exciting";
say split("=",$strd);
say join "::",$strd,$strb;
say $strd.$strb;
say $strd x 3;


say chop($strd);
say sprintf "%.3f",123.4567;


