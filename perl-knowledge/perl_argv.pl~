#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl_argv.pl
#
#        USAGE: ./perl_argv.pl  
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
#      CREATED: 11/11/2015 02:20:53 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
=begin
if ($#ARGV != 2) {
	print "usage:mycal num1 op num2 \n eg: mycal 5 + 3 or mycal 5 - 1\n";
	exit;
}
my	$n1=$ARGV[0];
my	$op=$ARGV[1];
my	$n2=$ARGV[2];

my	$ans=0;

if ($op eq "+") {
	$ans = $n1 +$n2;
}
elsif ($op eq "-") {
	$ans = $n1 - $n2;
}
elsif ($op eq "*") {
	$ans = $n1 * $n2;
}
elsif ($op eq "/") {
	$ans =$n1 / $n2;
}
else	{
	
	print "error: op must be + ,-, *, /, only\n";
	exit;
}

print "$ans\n";
=cut

my	$total = $#ARGV+1;
my	$conuter = 1;

my	$scriptname=$0;
print "total args passed to $scriptname :$total\n";

foreach my $a (@ARGV) {
	print "AGR # $conuter :$a\n";
	$conuter++;
}

















