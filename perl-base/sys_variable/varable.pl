#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: varable.pl
#
#        USAGE: ./varable.pl  
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
#      CREATED: 11/16/2015 03:01:47 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

print "the real user ID is $< and the effective user ID is $>\n";
print "the real group ID is $( and the effective group ID is $)\n";
print "now the perl version is $]\n";


$/="123"; #the input line separator
my	$line=<STDIN>;
print "$line\n";

$\="\n";#the output line separator
print "here is one line";
print "here is another line";

my	$a="hello";
my	$b="there";
$,=" "; #the output field separator
$\="\n";
print $a,$b;


$"="::";#the array element separator
my	@array=qw/this is a list/;
print "@array\n";

print "the current program name is:$0\n";
print "the system for linux error code:$?\n";




