#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: sub_base.pl
#
#        USAGE: ./sub_base.pl  
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
#      CREATED: 11/04/2015 10:47:20 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;
=begin
declare sub sub_names;
defined sub sub_names{blocks;}  
&subnames(parameters) if don't want use & must before call the sub  do  declaration



=cut

greetme();  #if subroutines non-parameters can omitted &
sub greetme {
	print "hello,perl\n";
}
&greetme if defined &greetme; #use function  defined judge the subroutines exists or not
if (defined &hello) {
	say "yes";
}
else
{
	say "no";
}
&sayhi;
sub sayhi{ say "say hello"; } #anywhere defined the subroutines the produced can call the subroutines
&sayhi;

my	$numa="perl";
my	$numb="bash";
&num($numa,$numb);
sub num {
	say @_;
	say "hello",$_[0],$_[1];
}

my	$sca=5;
my	$psca=\$sca;
say $sca,$psca,$$psca;
my	@arr=(1,2,3,4);
my	$parr=\@arr;
say @arr,$parr,@$parr,@$parr[0],$$parr[1],$parr->[1];
my	%hash	= (
	bash => 1991,
	perl => 2000,
);
my	$phash=\%hash;
say %hash,$phash,%$phash,$$phash{perl},$phash->{bash};

my	@lista=(1..10);
my	@listb=('a'..'z');

sub display {
	print "@_\n";
}
display(@lista,@listb);
print "=" x 20,"\n";
display(\@lista,\@listb);

sub param {
	print "the values in the \@_array are :@_\n";
	print "the first value is $_[0]\n";
	print "the last value is ",pop(@_),"\n";
	foreach my $value (@_) {
		$value+=5;
		print "the value is $value\n";
	}
}

print "give me five numbers\n";
my @n=split(' ',<STDIN>);
&param(@n);
print "the values is @n\n";

my	$first="red";
my	$last="yellow";
&color($first,$last);
sub color {
	my ($firsta,$lasta)=@_;
	print "welcome $firsta\n";
}














