#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: dir_function.pl
#
#        USAGE: ./dir_function.pl  
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
#      CREATED: 11/02/2015 12:56:12 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

my	@filea=glob "*.pl";
say @filea;
my	@fileb=<*.pl>;
say @filea;
my	@etcfile=</etc/*.conf>;
say @etcfile;

my	$dir="/home";
opendir DIR ,$dir;
while (my $file= readdir DIR) {
	print "$file\n";
}
close DIR;

my	$dirs="/home/yao";
opendir DIRS ,$dirs;
my @all_files= readdir DIRS;
say @all_files;

system("ls /usr/local/src");

