#!/usr/bin/env perl -0 
#===============================================================================
#
#         FILE: perl-0.pl
#
#        USAGE: ./perl-0.pl  
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
#      CREATED: 11/11/2015 03:15:43 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

#A program that use  the -0 option (the 0 here is the digit zero ,not the letter o)
while (my $line = <>) {
	$line =~ s/\n//g;
	next if ($line eq "");
	print "$line\n";
}










