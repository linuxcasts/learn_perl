#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: dir_handle.pl
#
#        USAGE: ./dir_handle.pl  
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
#      CREATED: 11/02/2015 10:24:07 AM
#     REVISION: ---
#===============================================================================
use strict;
use warnings;
use utf8;
use 5.010;
use File::Copy;

#file   directories effect
#open   mkdir	    create  mkdir dirname umask mkdir dira 0777
#open   opendir		open
#<>     readdir		read
#close  closedir	close
#copy   dircopy		copy
#move   remove		move
#unlink rmdir		delete
#rename rename		rename
#       chdir       change dir
#chmod 0777,filename
#chown $uid,$gid,filename       

my	$filea="a.txt";
my	$fileb="b.txt";
my	$dira="dira";
my	$dirb="dirb";
my	$dirc="dirc";
if ( !(-e "$dira") ) {
	mkdir $dira or die;
}
if ( !(-e "$dirb") ) {
	mkdir $dirb or die;
}

copy($filea,$dira);
move($fileb,$dirb);
rename($filea,"aaa.txt");
unlink("aaa.txt");
rename($dira,"dirab");
#dircopy($dirb,"dirbb");
#remove($dirb,$dirc);

chdir "/logs" or die $!;


