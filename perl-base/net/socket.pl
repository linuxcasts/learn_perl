#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: socket.pl
#
#        USAGE: ./socket.pl  
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
#      CREATED: 11/23/2015 02:16:06 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Socket;
use v5.10;

my	$address=gethostbyname('www.baidu.com');
say "host address is: ",inet_ntoa($address);
say "dns address is: ",inet_ntoa(inet_aton('www.baidu.com'));





















