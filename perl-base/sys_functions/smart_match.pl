#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: smart_match.pl
#
#        USAGE: ./smart_match.pl  
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
#      CREATED: 11/27/2015 09:07:22 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use v5.10;

my	@array1=qw/bash perl java python/;
my	@array2=@array1;
say "the two array has same elements" if @array1 ~~ @array2;

#%a ~~ %b                      hash's key whether same
#%a ~~ @b or @a ~~ %b          there has a least one of hash'key in array's elements
#%a ~~ /fred/ or /fred/ ~~ %a  there has a least one of hash'key match the match pattern
#'fred' ~~ %a                  whether exists $a{fred}
#@a ~~ @b                      two array whether same
#@a ~~ /fred/                  there has a least one of array's element match the match pattern
#$name ~~ undef $name          $name is undef
#$name ~~ /fred/               match pattern
#123 ~~ '123.0'                num and 'numish''s string  is same equal 
#'fred' ~~ 'fred'              string whether same
#123 ~~ 456 				   num whether equal












