#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: io-put.pl
#
#        USAGE: ./io-put.pl  
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
#      CREATED: 10/21/2015 03:27:21 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

=begin
print "what is your name?\n";
my	$name=<STDIN>;
print "your name is $name\n";

print "what is your idol\n";
my	$idol=<>;
print "your idol is $idol\n";
=cut

my	$string = "hello world";
print "now string is $string\n";
chop($string);
print "use chop string is $string\n";

my	$stringa = "helloworld\n";
print "now stringa is $stringa";
chomp($stringa);
print "this is the beginning\n";
print "use chmop stringa is $stringa";
print "this is the ending\n";

#the chmop use way: chmop($text=<STDIN>); 
#use chop() delete the last chracter 
#use chmop() decide the last chracter yes or no "\n" if have delete the "\n"


@ARGV=qw/hash.pl sub.pl perl.pl/; #use domain  operation "<>" read the three files
while (<>)
{
	chomp;
	print "it was $_ that I saw\n";
}






















