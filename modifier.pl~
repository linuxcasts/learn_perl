#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: modifier.pl
#
#        USAGE: ./modifier.pl  
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
#      CREATED: 10/22/2015 01:26:20 PM
#     REVISION: ---
#===============================================================================

#use strict;
#use warnings;
use utf8;

#expression2 if expression1
my	$x = 5,$y = 6;
print $x,"\n" if $x == 5;
#expression2 unless expression1  if the expression1 is false excute the expression2
print $x,"\n" unless $x==8;
#expression2 while expression1  when expression1 is true while modifier loop excute the expression2
print $x++, "\n" while $x !=10; 
#expression2 until expression1 when expression1 is false until modifier loop excute the expression2
print $y++, "\n" until $y ==10; 
#foreach modifier
@alpha = (a..z,"\n");
print foreach @alpha;

my	$a = "xabcy\n";
print $a if $a=~/abc/;

my	$b = "i lost my love in world";
print "found the love in world\n" if $b=~/love/;


#$_ = "hello i love perl";
#print "perl is so good" if /perl/;
=end

=begin
while (<DATA>) {
	print if /perl/; #the way1 print the data only match /perl/
}
while (<DATA>) {
	if (/bash/) {
		print;    #the way2
	}
}
while ($_=<DATA>) {
	print if /bash/;#use the variable $_
}
while (my $inpuline=<DATA>) {
	print  $inpuline if $inpuline=~/java/; #use the another variable instead of $_
}
=cut

while (<DATA>) {
	print unless /linux/; #print the data  expect /linux/
}

__DATA__
linux  1992
window 1993
ios    2009
perl   1987
java   1989
python 1988
bash   1997

















