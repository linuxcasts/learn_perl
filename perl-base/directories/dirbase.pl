#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: dirbase.pl
#
#        USAGE: ./dirbase.pl  
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
#      CREATED: 11/12/2015 09:22:45 AM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Cwd;

print "your current directory is :",cwd ,"\n";
chdir "/yao" or warn "directory /yao : $!";
print "you are now in",cwd,"\n";

opendir(DIR,"/root/learn") or die "can't open /root due to $!";
my	$entry=readdir(DIR);
while (defined($entry)) {
	print "$entry\n";
	$entry=readdir(DIR);
}
closedir(DIR);

opendir(TEMPDIR,"/home/yao") or die "can't open /tmp : $!";
my	@files=grep (!/^\.\.?$/, readdir TEMPDIR);
print "@files\n";
closedir(TEMPDIR);

print "directory to create";
my	$newdir=<STDIN>;
chomp $newdir;
mkdir ($newdir,0755) or die "failed to create directory: $!";
rmdir ($newdir);

chdir "./temp";
print "i am in ",cwd,"\n";
unlink <*.txt>;
rename "d.sh","d.perl";

=begin
chmod mode,list_of_files;
rename oldname,newname;
unlink list_of_files;
mkdir newdir,permission;
chdir newdir;
readdir dirhandle;
opendir dirhandle,directory;

=cut


=begin
unlink ($filename) or die "can't delete $filename: $!\n";
unlink (@filenames) == @filenames or die "could't unlink all of @filenames: $!\n";
unless (($count=unlink(@filelist)) == @filelist) {
	warn "could not delete $count of ". (@filelist)."files";
}


=cut











