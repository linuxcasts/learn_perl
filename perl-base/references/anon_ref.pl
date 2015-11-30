#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: anon_ref.pl
#
#        USAGE: ./anon_ref.pl  
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
#      CREATED: 11/16/2015 12:42:11 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my	$ar=[1..5];
foreach  (@$ar) {
	print ("$_ ");
}
print "\n";

my	$arr=[1..5,[6..9]];
my	$i=0;
foreach  (@$arr) {
	if ($i == 5) {
		print (",array reference : @$_ ");
	}
	else {
		print ("$_ ");
	}
	$i++;
}


my	$address={
	buiding => 1010, 
	city    => "xihu",
	tel     => 110119,
	country => "china",
};
print "$address->{city}\n";
print "\n";

my	$foo->{address}->{city}="china";
print $foo,"\n"; #print reference
print $foo->{address}; #print  reference
print $foo->{address}->{city};


