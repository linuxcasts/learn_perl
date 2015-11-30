#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: dirstat.pl
#
#        USAGE: ./dirstat.pl  
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
#      CREATED: 11/11/2015 03:42:35 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;
use File::Stat qw/:all/;

my	$stat=stat("/usr/local");
say $stat -> dev;  #same sa $stat -> [0]
say $stat -> inode;
say $stat -> mode;
say	$stat -> nlink;
say	$stat -> uid;
say	$stat -> gid;
say	$stat -> rdev;
say	$stat -> size;
say	$stat -> atime;
say	$stat -> mtime;
say	$stat -> ctime;
say	$stat -> blksize;
say	$stat -> blocks; #same as $stat -> [12]


=begin stat /usr/local
  File: `/usr/local/'
  Size: 4096      	Blocks: 8          IO Block: 4096   directory
Device: 802h/2050d	Inode: 391707      Links: 26
Access: (0755/drwxr-xr-x)  Uid: (    0/    root)   Gid: (    0/    root)
Access: 2015-11-10 10:53:23.129822385 +0800
Modify: 2015-10-19 08:38:38.504058219 +0800
Change: 2015-10-19 08:38:38.504058219 +0800
=cut

=begin
$device (device number of filesystem)
$inode  (inode number the pointer field)
$mode  (type and permissions) 
$nlink (number of hard links to the file)
$uid   (numeric user id of file's owner)
$gid   (numeric group id of file's owner)
$rdev  (the device identifier (special files only for character of block))
$size  (total size of file in bytes same as -s filename) 
$atime (last access time in seconds since the Epoch 1970)
$mtime (last modify time in seconds since the Epoch 1970)
$ctime (inode change time in seconds since the Epoch 1970)
$blksize (preferred block size for filesystem I/0)
$blocks (actual number of blocks allocated)
=cut
=begin
my	$dir="/usr/local";
my  @stat = stat $dir;
print "@stat";
#output is 2050 391707 16877 26 0 0 0 4096 1447228433 1445215118 1445215118 4096 8
=cut
