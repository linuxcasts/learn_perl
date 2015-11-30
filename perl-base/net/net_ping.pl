#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: net_ping.pl
#
#        USAGE: ./net_ping.pl  
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
#      CREATED: 11/26/2015 09:42:36 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Net::Ping;
use v5.10;
{
my	$host="www.baidu.com";
my	$ping=Net::Ping->new('icmp',30);
print "$host is alive \n" if $ping->ping($host);
$ping->close();
}

{
my	$ping=Net::Ping->new();
my  ($return,$duration,$ip)=$ping->ping('www.jd.com');
say "$return,$duration,$ip";
}














