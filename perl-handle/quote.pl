#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: quote.pl
#
#        USAGE: ./quote.pl  
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
#      CREATED: 10/30/2015 04:17:36 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

my	$var=100;
say q{var's values is $var};
say qq/var's values is $var/;
my	@array=qw/this is use qw/; #use the qw as array separative sign
foreach my $key (@array) {
	print "key is $key\n";
}
my	@output=qx/free -m/; #qx equal `` 
say @output;

=begin
customary  Generic     meaning       interpolates
  ''         q//    literal string        no
  ""        qq//    literal string        yes
  ``        qx//    command execution     yes
  ()        qw//    word list             no
  //        m//     pattern match         yes
 s///      s///     pattern substitution  yes
 tr///     y///     character translation no
 ""        qr//     regular expression    yes
=cut















