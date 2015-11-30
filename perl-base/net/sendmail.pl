#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sendmail.pl
#
#        USAGE: ./sendmail.pl  
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
#      CREATED: 11/25/2015 12:37:10 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

my	$to='928084353@qq.com';
my	$from='952059083@qq.com';
my	$subject='test mail';
my	$message='this is a test mail by perl script';

open(MAIL,"|/usr/sbin/sendmail -t");
#email header
print MAIL "TO:$to\n";
print MAIL "FROM:$from\n";
print MAIL "SUBJECT,$subject\n";
#email body
print MAIL $message;
close(MAIL);
print "email sent successful\n";






