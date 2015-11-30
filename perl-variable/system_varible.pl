#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: system_varible.pl
#
#        USAGE: ./system_varible.pl  
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
#      CREATED: 11/02/2015 03:31:47 PM
#     REVISION: ---
#===============================================================================

use strict;
#use warnings;
use utf8;

#the default scalar variable : $_

#the pattern-matching operator and $_
$_= <>;
print "perl" if ($_ =~ /perl/);
print "hello" if (/abc/);
print "no" if ($_ !~/abc/);

#the substitutions operator and $_
my $string=s/a/A/;
print $_; #$_ is hide

#the translation operator and $_
my $trans=tr/a-z/A-Z/;
print; #the print function 

=begin
#the chop function and $_
while (<>) {
	chop;
	print;
}
=cut

#the program name:$0
print "now execute $0\n";

#the user ID $< and $>
my ($username)=getpwuid($<);
print "hello,$username\n";

#the group ID $( and $)
#the input line separator $/ save the most  before string of the line separator  
$/=":";
my $line=<>;
print "$line\n";

#the output_line separator $\ add newline at the end of output line
$\="\n";
print "here is an line";
print "here is one another line";

#the output_field_separator:$,
my	$a="hello",$b="there";
$,=" ";
$\="\n";
print ($a,$b);

#the arrays element separator => $"
#the system errors codes => $?
#the system errors message => $!
#the current line number => $.

