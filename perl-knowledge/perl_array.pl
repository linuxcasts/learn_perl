#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl_array.pl
#
#        USAGE: ./perl_array.pl  
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
#      CREATED: 11/05/2015 02:57:14 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use List::Util qw(min max first);
use 5.010;

my	@a=qw/x y z w/;
my	$i=first {$a[$_] eq "y"} (0..$#a); #use list module's first function get the elements's index
say $i;
say $#a, scalar(@a);

my	@array=qw/12 23 34 45 67/;
say min(@array);
say max(@array);

my	@b=(1..5);
my	@c=@b[2..4]; #array slice
say @c;
my	@d=splice(@a,1,2);
say @d;
my	@e=@b[1..$#b]; #slice to end
say @e;

