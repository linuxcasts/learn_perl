#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: given_when.pl
#
#        USAGE: ./given_when.pl  
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
#      CREATED: 11/27/2015 09:34:25 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use v5.10;


my	@array=qw/redhat centos OS Macos Serveros windows/;
foreach  (@array) {
	say "\nprocess $_";
	when(/os/i)    {say "name has os in it";continue}
	when(/\AOS/)   {say "name starts with OS";continue}
	when('centos') {say "centos in it";}
	say "moving on to default";
	default 	   {say "i don't see any in it"}
}









