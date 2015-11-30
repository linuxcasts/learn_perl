#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl.pl
#
#        USAGE: ./perl.pl  
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
#      CREATED: 10/29/2015 01:34:37 PM
#     REVISION: ---
#===============================================================================

use strict;
#use warnings;
use utf8;

#print "a" cmp "b";
#print 1 <=> 2;
my	@array=qw/java c lua perl/;
print "the array has ".(scalar @array)." elements\n";
print "the last element index is $#array\n";

#references
my	$color="red";
my	$refscalar=\$color;
print $color."\n";
print $refscalar."\n";
print $$refscalar."\n";

my	@colors=qw/red yellow black green/;
my	$refarray=\@colors;
print $colors[1]."\n";
print $refarray."\n";
print $refarray->[1]."\n";
print $$refarray[1]."\n";


my	%colores=(
	bash=>1987,
	perl=>1992,
	java=>1997,
	lua=>1989,
);
my	$refhash=\%colores;
print $colores{perl}."\n";
print $refhash."\n";
print $$refhash{lua}."\n";
print $refhash->{java}."\n";
print ${$refhash}{bash}."\n";


my	%account	= (
	"number" => "31415916",
	"opened" => "3000-01-01",
	"owners" => [
			{
				"name" => "bash",
				"dob"  => "1989-09-09",
			}
			,
			{
				"name" => "java",
				"dob"  => "2010-01-12",
			}
	]
	,
);
print  $account{number}."\n";
print $account{owners}->[1]->{name}."\n";













