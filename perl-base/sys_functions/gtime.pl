#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: gtime.pl
#
#        USAGE: ./gtime.pl  
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
#      CREATED: 11/25/2015 02:09:50 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use v5.10;

my	@weekday=qw/sun mon tue wed thu fri sat/;
my	$local_time=gmtime();
print "local time is $local_time\n";
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdat)=gmtime(time);
$year+=1900;
print "Formated time=$mday/$mon/$year $hour:$min:$sec $weekday[$wday]\n";

say scala localtime;







