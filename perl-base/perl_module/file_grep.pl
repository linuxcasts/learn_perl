#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: file_grep.pl
#
#        USAGE: ./file_grep.pl  
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
#      CREATED: 11/27/2015 04:12:07 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use File::Grep qw(fgrep fmap fdo);

if (fgrep {/root/} "/etc/passwd") {
	print "the user root in it\n";
}




