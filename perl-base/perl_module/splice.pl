#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: splice.pl
#
#        USAGE: ./splice.pl  
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
#      CREATED: 11/27/2015 10:05:00 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

open MYFILE,'<',"/etc/passwd" or die "failed : $!\n";
while (<MYFILE>) {
	my ($name,$shell)=(split /:/)[0,-1]; #-1 last element
	print "name is $name and shell is $shell";
}

close MYFILE;







