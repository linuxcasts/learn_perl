#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: grep.pl
#
#        USAGE: ./grep.pl  
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
#      CREATED: 11/27/2015 03:18:19 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

#USAGE:grep exp,list
#use grep as finder
my	@number=(1 .. 10);
my  @odd=grep {$_ > 5 } @number;
print "@odd\n";

my	@stings=qw/yellow blue white red apple archlinux/;
my	@long_strings=grep {length $_ > 5} @stings;
print "@long_strings\n";

my	@files=qw/index.html index.php index.txt index.doc index.js index.jsp name.php/;
my	@phpfile=grep {/\.php$/} @files;
print "@phpfile\n";
my	$sumfile=grep {/.php$/} @files;
print "$sumfile\n";

#use grep as filter
my	@names=qw/JOHN peter ANDY mary Michael/;
my	@ucnames=grep {$_ eq uc} @names;
print "@ucnames\n";
my	@lcnames=grep {$_ eq lc} @names;
print "@lcnames\n";

#use grep with a list
my	@array=(-10 .. 10);
my	@postive=grep {$_ > 0} @array;
print "@postive\n";
print my @list=grep { length == 4} qw /blue red white perl/;

if (grep /\.html$/,@files) {
	print "have html file in it\n";
}
else {
	print "no has html file\n";
}










