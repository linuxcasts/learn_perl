#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: given-when.pl
#
#        USAGE: ./given-when.pl  
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
#      CREATED: 11/09/2015 01:28:40 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

print "what is your favorite color:\n";
chomp(my $answer=<STDIN>);

given ($answer) {
	when ("purple") {say "me too"}
	when ("red")    {say "stop"}
	when ("green")  {say "go on"}
	when (/\w+,no \w+/) {die "AAAUUUGHHHH"}
	when (42)       {say "wrong answer"}
	default        {say "are you sure $answer is a real color"}
}













