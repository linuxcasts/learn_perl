#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: hash.pl
#
#        USAGE: ./hash.pl  
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
#      CREATED: 10/28/2015 01:30:51 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


my	%hash_one=(
	"bash" => 1987,
	"perl" => 1989,
	"java" => 1991,
);
my	@hash_keys=keys %hash_one;
my	@hash_values=values %hash_one;
print "@hash_keys\n","@hash_values\n";


my	%revese_hash=reverse %hash_one;
my	@reve_keys=keys %revese_hash;
my	@reve_values=values %revese_hash;
print "@reve_keys\n","@reve_values\n";

while ((my $key,my $value)=each %hash_one) {
	print "$key=>$value\n";
}

foreach my $x (sort keys %hash_one) {
	my	$values=$hash_one{$x};
	print "$x=>$values\n";
#	print "$x=>$hash_one{$x}\n";
}

if (exists $hash_one{"bash"}) {   
	print "bash is exists\n";  #exists $hashname{$key} if $key is exists it return true nothing else with $values
}
print "exists\n" if (exists $hash_one{perl});

delete $revese_hash{1987}; #delete the key(include the key's value) from the hash
delete $revese_hash{1980}; #if doesn't exists the key no warnings and no wrong information
foreach my $y (sort keys %revese_hash) {
	my	$values=$revese_hash{$y};
	print "$y=>$values\n";
}

foreach my $z (sort keys %revese_hash) {
	print "$z=>$revese_hash{$z}\n"; #hash elements interpolation  single hash elements in double quote
}

my	%hash_two=(
	wuhan=>"hubei",
	wuxi=>"jiangsu",
	hangzhou=>"zhejiang",
);
print "$hash_two{wuhan}\n";
my	@hash_size=keys %hash_two;
print scalar  @hash_size,"\n";
print "$#hash_size\n";











