#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: file_ioput.pl
#
#        USAGE: ./file_ioput.pl  
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
#      CREATED: 10/30/2015 02:18:51 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
=begin
open FILE "filename"
open OUTPUT "<output.file"
open INPUT ">input.file"
open append ">>append.file"




=cut

#open(READ_FILES,"/etc/passwds") or die ("could not open file passwds $!");
#close(READ_FILES);
#open(READ_FILES,"/etc/passwds") or warn ("could not open file passwds $!");
#close(READ_FILES);
#die will exit procedural but warn just give warnings

open(READ_FILE,"</etc/passwd"); #the < can omitted
my	$read_data=<READ_FILE>;
#print "$read_data"; take the first line save as $read_data
while ($read_data=<READ_FILE>) {
	print "$read_data"; #loop read datas
}
#close(READ_FILE);
my	@read_datas=<READ_FILE>; #take filedate write into @array  every line stand for the array's element
print @read_datas;
close(READ_FILE);

open(WRITE_FILE,">name.txt"); #STDOUT STDERR don't need open
print WRITE_FILE "perl\n";
print WRITE_FILE "bash\n";
print WRITE_FILE "java\n";
close(WRITE_FILE);

open(APPENDED_FILE,">>name.txt");
print APPENDED_FILE "hello coder\n";
close(APPENDED_FILE);

if (-e "/etc/passwds") {
	print "file is exists\n";
}
else
{
	print "file is not exists";
}

@ARGV=("/etc/passwd","./name.txt");
while (my $line =<> ) {
	print $line;
}































