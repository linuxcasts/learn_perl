#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: file_attribute.pl
#
#        USAGE: ./file_attribute.pl  
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
#      CREATED: 10/30/2015 03:38:14 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;
use POSIX;

my ($device,$inode,$mode,$nlink,$uid,$gid,$rdev,$size,$atime,$mtime,$ctime,$blksize,$blockes)=stat("/etc/passwd");
print ("stat() $device,$atime,$inode,$ctime\n");

#mday the oneday of the month; $mon from 0 to 12; $wday the day of week; $yday the day of year; $isdst daylight savings time
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst)=localtime();
print qq($sec,$min,$hour,$mday,$wday,$yday,$isdst\n);
say scalar $mon+1;
say scalar $year+1900;
my	@nowtime=localtime();
say  @nowtime;
my	$now=localtime;
say $now;

my	$nowstring=strftime "%a %b %e %H:%M:%S %Y",localtime;
say $nowstring;



