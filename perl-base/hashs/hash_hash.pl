#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hash_hash.pl
#
#        USAGE: ./hash_hash.pl  
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
#      CREATED: 11/26/2015 12:26:46 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


my	%hash_of_hashes=
(
	first => {
			one => 1,
			two => 2,
			three => 3
	},
	second =>{
			four => 4,
			five => 5,
			six  => 6
	}
);
print "$hash_of_hashes{first}->{one}\n";










