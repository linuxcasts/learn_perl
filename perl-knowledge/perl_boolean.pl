#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl_boolean.pl
#
#        USAGE: ./perl_boolean.pl  
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
#      CREATED: 11/05/2015 09:24:49 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;


=begin	
no boolean in perl use true or false to check scalar
  false                              true
undef								number 1 or non-zero numbers
numer 0 even written 000 or 00		' ' the string have a blank
'' null string						'00' the sting have two number 0 or even more number 0
'0' the string include single number 0  "0\n" 'true' 'false' there string all also are true
=cut

=begin
0      #would become the string "0", so false
1      #would become the string "1", so true
10-10  #10 mius 10 is 0,would convert to string "0", so false
0.00   #equals 0,would convert  to string "0", so false
"0"    #is the string "0",so false
""     #is a null string,so false
"0.00" #is the sting "0.00",neither "" nor "0",so true
"0.00"+0 #would become the number 0,so false
\$a    #is a reference to $a,so true ,even if $a is false
undef() #is a function returning  the Undefined values,so false
=cut


