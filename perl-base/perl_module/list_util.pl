#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: list_util.pl
#
#        USAGE: ./list_util.pl  
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
#      CREATED: 11/27/2015 12:42:06 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use List::Util qw(first max maxstr min minstr reduce shuffle sum sum0 product);
use v5.10;
use List::MoreUtils qw(all none any natatime mesh pairwise each_array :all);

my	@array=qw/php java shell perl php python perl/;
my	$first_match = first {/\bperl\b/i} @array;
say $first_match;

my	$total = sum(1..100);
say $total;

my	$max = max(1,3,5,7,9);
my	$min = min(2,4,6,8,10);
say $max;
say $min;

my	$max_str =maxstr @array;
say $max_str;
my	$min_str =minstr @array;
say $min_str;

my	@shuffled_nums = shuffle (1..10);
say @shuffled_nums;
my	@shuffled_string = shuffle ('a'..'m');
say @shuffled_string;

my	$foo1=reduce {$a > $b ? $a : $b} 1 .. 10; say $foo1;     #max
my	$foo2=reduce {$a gt $b ? $a : $b} 'a'..'z'; say $foo2; #maxstr
my	$foo3=reduce {$a < $b ? $a : $b} 1..10; say $foo3;   	 #min
my	$foo4=reduce {$a lt $b ? $a : $b} 'a' .. 'z'; say $foo4; #minstr
my  $foo5=reduce {$a + $b} 1 .. 100; say $foo5; 				 #sum
my  $foo6=reduce {$a . $b} 'a' .. 'z'; say $foo6; 				 #connect
my  $foo7=product 1,2,4,6,8; say $foo7; #product
my  $foo8=sum0 (); say $foo8; #sum0 same as sum

my	@numbers=(1,10,23,45,98);
if (none {$_ > 100}) {
	say "no element over 100";
}
elsif (any {$_ > 50}) {
	say "some elements over 50";
}
elsif (all {$_ < 10}) {
	say "all elements less 10";
}

my	@array1=(1 .. 12);
my	@array2=('a'..'m');
my	$iterator=natatime 3 , @array1;
while (my @triad=$iterator->()) {
	say "got:@triad";
}
my	$cut=natatime (5,@array1,@array2); # n at a time
while (my @array3=$cut->()) {
	say "cut is :@array3";
}

my	@arraya=qw/centos debian redhat/;
my	@arrayb=(1989,2001,2015);
my	@arrayc=qw/java bash perl/;
my	@union_array=mesh @arraya,@arrayc,@arrayb;
say @union_array;

my	$ea=each_array(@arraya,@arrayb,@arrayc);
my	@arrayd;
while (my ($a,$b,$c)=$ea->()) {
	push  @arrayd,$a,$c,$b;
}
print "@arrayd\n";

insert_after {$_ eq 'bash'} "python"=>@arrayc;
print "@arrayc\n";

my	@numa=(1..5);
my	@numb=(6..10);
my	@map_arrays=pairwise {$a , $b} @numa,@numb;
print "@map_arrays\n";





