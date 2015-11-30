#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl_datetime.pl
#
#        USAGE: ./perl_datetime.pl  
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
#      CREATED: 11/06/2015 09:06:15 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

open(PIPE,"cat /etc/passwd|");
while (my $line = <PIPE>) {
	print ($line,"\n");
}

open(VERSION,"/proc/version");
while (my $lines =<VERSION>) {
	print ($lines,"\n");
}






