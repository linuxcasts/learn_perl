#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: file_propety.pl
#
#        USAGE: ./file_propety.pl  
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
#      CREATED: 11/03/2015 12:34:24 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

=begin
-r file is readable by effective uid/gid
-w file is writable by effective uid/gid
-x file is executed by effective uid/gid
-o file is owned by effective uid

-R file is readable by real uid/gid
-W file is writable by real uid/gid
-X file is executed by real uid/gid
-O file is owned by real uid

-e file exists
-z file has zero size(is empty)
-s file has nonzero size(return size in bytes)

-f file is a plain file
-d file is a directory
-l file is a symbolic link(just in linux system)
-p file is a named pipe(FIFO) or FileHandle is a pipe
-S file is a Socket
-b file is a block special file
-c file is a character special file
-t FileHandle is opened to a tty

-u file has setuid bit set
-g file has setgid bit set
-k file has sticky bit set

-T file is an ANSII or utf-8 text file
-B file is a "binary" file (opposite of -T)

-M script start time minus file modification time in days
-A same for access time
-C same for inode change time (just in linux system)
=cut

my	$file="/etc/passwd";
my	$size = (-s "/etc/passwd")+1024;
say $size;
say "readable" if -r $file;
say "binary" if -B "/bin/ls";

























