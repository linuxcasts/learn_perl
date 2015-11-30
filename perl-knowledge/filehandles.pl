#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: filehandles.pl
#
#        USAGE: ./filehandles.pl  
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
#      CREATED: 11/09/2015 12:58:07 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;

open(HANDLE,"filename"); #read from exiting file
open(HANDLE,"< filename");#same thing,explicitly
open(HANDLE,"> filename");#create file and write to it
open(HANDLE,">> filename");#append to exiting file
open(HANDLE,"| output-pipe-command");#set up an output filter
open(HANDLE,"input-pipe-command |"); #set up an input filter









