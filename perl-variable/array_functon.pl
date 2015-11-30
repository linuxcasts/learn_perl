#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: array_functon.pl
#
#        USAGE: ./array_functon.pl  
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
#      CREATED: 10/30/2015 10:12:53 AM
#     REVISION: ---
#===============================================================================

use strict;
#use warnings;
use utf8;
use 5.010;

=begin
(1..5)=(1,2,3,4,5);
(2,5..7,9)=(2,5,6,7,9);
(3..3)=(3);      #the range of array

(2.1 .. 5.3)=(2.1,3.1,4.1,5.1);
(4.5 .. 1.6)=(); #the list use real number

("aaa".."aad")=("aaa","aab","aac","aad");
@day_of_mouth=("01".."31"); #the list use string

($var1..$var2+5) #the list use variables













=cut

my	@os=qw/centos redhat debian arch/;
pop @os; #delete the last element of array
say @os;
push @os,"windows","macos"; #add one or more elements into the array's end
say @os;
shift @os; #delete the beginning element of array
say @os;
unshift @os,"ubuntu","freebsd";#add one or more elements into the array's begin
say @os;

foreach my $x (@os) {
	print "the array element is $x\n";	
}

my	@cultos = @os[0..2,4];
say @cultos;

my	@numarray=(1..7);
say @numarray;
my	@chararray=("a".."z");
say @chararray;
#my	@nullarray=(); #null array
#say @numarray;
my	@numarray1=@numarray;
say @numarray1;
my	@chararray1=(@chararray,"A".."Z");
say @chararray1;

my	@spliarray = splice(@chararray,13,7,@numarray); #array splice
say @chararray;
say @spliarray;

say "array size = ",scalar @numarray; #another way
my	$length=@numarray;  #usually  use array evaluate to string get the array's length
say "array length is ",$length;
say "max index is ",$#numarray;

my	$astring="hubei=zhejiang=jiangsu=yunnan";
my	@abstring=split("=",$astring); #split the string into array
say @abstring[2];
my	$bstring=join("=>",@abstring);
say $bstring;
say sort @abstring; #sorted array
my $count=grep(/a/,@abstring);
say $count;


my	@odd=(1,3,5,7,9);  
my	@even=(2,4,6,8);
my	@oddeven=(@odd,@even); #the array combined
say @oddeven;
say sort @oddeven;    #sorted array
say reverse @oddeven; #reversed array
say @oddeven[3..8]; #array splice
delete @odd[0..2];
say @odd;

my	@array=qw/2 4 12 9 14/;
my	@orderasc=sort {$a <=> $b} @array;
print "@orderasc\n";
my	@orderdesc=sort {$b <=> $a} @array;
print "@orderdesc\n";

=begin
array function include the following 




=cut


















