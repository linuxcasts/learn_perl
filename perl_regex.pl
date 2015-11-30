#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl_regex.pl
#
#        USAGE: ./perl_regex.pl  
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
#      CREATED: 11/09/2015 02:34:49 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

my	$string="library: programing perl \n"
			."perl cookbook\n"
			."impatient perl";
if ($string=~/library:(.*)/) {print "default is '$1'\n"}
if ($string=~/library:(.*)/m) {print "multiline is '$1'\n"} #let ^ and $ also match next to embedede \n
if ($string=~/library:(.*)/s) {print "singleline is '$1'\n"} #let . also match newline


my	$input="this \nis \none \nscalar \nobject.\n that has multiple lines\n";
print "matched object\n" if $input=~/^object/m;
print "matched scalar\n" if $input=~/scalar$/m;
print "matched scalar\n" if $input=~/^scalar/m;





=begin
#the m// operator(matching)
m/pattern/modifiers
 /pattern/modifiers
expr =~ m/pattern/modifiers
expr =~ /pattern/modifiers

#the s/// operator(substitution)
s/pattern/replacement/modifiers
value =~ s/pattern/replacement/modifiers 

#the tr/// operator(translation)
tr/searchlist/replacement/cdsr
value =~ tr/searchlist/replacement/cdsr
/c complement searchlist
/d delete found but unreplaced characters
/s SQUASH duplicate replaced characters 
/r return transliteration and leave the original string untouched
=cut

say "Drogo" =~ tr/Dg/Fd/r;

=begin
beginnings : the \A and ^ Assertion
endings    : the \z ,\Z and $ Assertion 
boundaries : the \b and \B Assertion 
#grouping and capturing
/(\d)(\d)/ #match two digits capturing them into $1 and $2
/(\d+)/    #match one and more digits capturing them all into $1
/(\d)+/    #match a digits one or more times capturing the last into $1

($full,$first,$last) = /^((\w+)(\w+))$/ #$1 is (()) $2 is the first (\w+) $3 is the last (\w+)
=cut




































