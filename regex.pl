#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: regex.pl
#
#        USAGE: ./regex.pl  
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
#      CREATED: 10/22/2015 02:44:29 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

print "would you like to play games?\n";
chomp($_=<STDIN>);
print "let's play scoccer" if /yes/i;

#/s the function are can match any character; when searching string have the "\n" operator  take the string as singleline
#/s dot(.) matches newline
#/x ignore whitespace all allow comments (#) in pattern 
#/o Compile pattern only once













#m/search pattern/g
#m/match/=// also m(match) m{match} m[match] m%match% m!match!
#
#
#
my	$_ = "hello perl hello perl hello Perl PERL python linux unix shell bash\njava";
my	@list = /perl/g;
my	@lista = /perl/ig;
print "@list.\n";
print "@lista.\n";

/PERL/;
print $&,"\n"; #$& stand for if match is successfully print search string
/bash/;
print $&,"\n";

/python/;
print $',"\n"; #$' stanf for if match is successfully print the after remain strings of  that search string
/linux/;
print $',"\n"; 

/unix/;
print $`,"\n"; #$` stand for if match is successfully print the before remain strings of that search string
/PERL/;
print $`,"\n";

/bash #search bash  x stanf for can comments you want to search somethings but perl Don't explains the comments
/x;
print "comment and spaces were removed and \$& is $&\n";
/unix   #search unix
/x;
print "comment and spaces were removed and \$& is $&\n";


=begin
s/old/new/;
s/old/new/i;
s/old/new/ige;
s+old+new+i;
s(old)/new/;  
s[old]{new};
s/old/expression to be evaluate/e;  => s/$sal/$sal * 1.1/e
s/old/new/x; => s/dec/"Dec"."ember" #replace "dec" or "Dec" become December
=cut



=begin
/regular expression/  default delimiters  if the delimiters is "/" the "m" may be omitted
m#regular expression# optional delimiters
m{regular expression} pair of delimiters

#match modifier
# "i" represent ignore case
# "m" take the string as multi-line
# "o" only once Compile
# "s" replace mode
# "x" allow to provides comments in a regular expression
# "g" global match
=cut

=begin
while (<DATA>) {
    #print if /wuhan/;
	#print unless /wuhan/;
	print if m#zhejiang#;
}
my	$name = "yaoxiang";
my	$_ =qq/$name is a good man/;
print if m'$name'; #the $name in single quotes output as input
print if m"$name";

__DATA__
wuhan    hubei
jinan    shandong
nanjing  jiangsu
hangzhou zhejiang
changsha hunan
nanchang jiangxi
xiantao  wuhan
=end





























