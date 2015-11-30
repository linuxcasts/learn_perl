#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hash_function.pl
#
#        USAGE: ./hash_function.pl  
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
#      CREATED: 10/30/2015 01:16:18 PM
#     REVISION: ---
#===============================================================================

use strict;
#use warnings;
use utf8;
use 5.010;

my	%hash_01=(
	huawei => 1999,	#if the key is string don't need quote 
	xiaomi => 2010,
	meizu  => 2011,
	apple  => 2008,
	);
say $hash_01{apple}; #use the $hashname{hashkeys} to get the hash value
my	@hash_key=keys %hash_01; #keys function get all the hash's keys
my	@hash_val=values %hash_01;	#values function get all the hash's value
say @hash_key;
say @hash_val;

my	$hash_size=keys %hash_01;
print "hash size is $hash_size\n";


while (my ($key,$value)=each %hash_01) { #hash working through
	print "$key => $value\n";
}

foreach my $keys (sort keys %hash_01) {  #hash sort
	my	$value=$hash_01{$keys};   
	print "$keys => $value\n";	
}

if (exists $hash_01{apple}) { #check the hash's key exist or not  nothing with whether has opposited value
	say "true";
}

delete $hash_01{meizu}; #delete the key from hash if don't has the key  do nothing
while (my ($key,$value)=each %hash_01) {
	print "$key => $value\n";
}

foreach my $x (sort keys %hash_01) {
	print "$x=>$hash_01{$x}\n";  #hash single element interpolate not supported such as print "%hash_01";
}

my	@hash_array=%hash_01; #hash change into array
print "@hash_array\n";

#%hash_name=(); empty hash








