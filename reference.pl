#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: reference.pl
#
#        USAGE: ./reference.pl  
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
#      CREATED: 11/03/2015 02:19:30 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

=begin
use scalar decarle reference ; use "\" operator get reference values
my	$scalar_r=\$scalar;
my	$array_r=\@array;
my	$hash_r=\%hash;
=cut

=begin
my	@array1=(1,2,3,4,5);
my	@array2=(6,7,\@array1,9,10);  list Nest
if $pointer as an array's reference  use @$pointer get the element values in array also use %$pointer in hash list

=cut

#scalar's reference
sub add {
	my ($a,$b)=@_;
	$$a++;
	$$b++;
}
$a=1;
$b=2;
&add(\$a,\$b);
print "$a,$b\n";

#array's reference


#hash's reference
my	%hash=(
	abc=>123,
	def=>456,
);
my	$refhash=\%hash;
print "%$refhash\n";
print "$refhash->{abc}\n";
print "$$refhash{def}\n";









