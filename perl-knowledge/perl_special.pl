#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: perl_special.pl
#
#        USAGE: ./perl_special.pl  
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
#      CREATED: 11/06/2015 01:12:34 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

say @ARGV;  #@ARGV contains the commandline arguments to the program as ordered by shell
#perl -e 'print join( , , @ARGV), n' 1 2 3     output:1,2,3
#perl -e 'print join( , , @ARGV), n' 1 "2 3" 4   output:1,2 3,4
say $0;		#$0 $PROGRAM_NAME  print current script's name
say @INC;
#push (@INC,"/home/yao"); use module in /home/yao

print "your shell is $ENV{SHELL}\n"; #%ENV hash include current environment variable
{
#$. $NR current produce's line numbers
open(ETC,"/etc/passwd");
while (my $lines =<ETC>) {
	print "now is ",$.," line,and record is ",$lines,"\n";
}
}
#perl -n -e 'print  "$.-$_"' "/etc/passwd"


say $$; #$PROCESS_ID  the produce's PID
say $<; #$REAL_USER_ID  show the current user's real UID
say $>; #$EFFECTIVE_USER_ID  show the current user's effective EUID
say $(; #$REAL_GROUP_ID or $GID
say $); #$EFFECTIVE_GROUP_ID or $EGID
say $?; #$CHILD_ERROR  return the last command or system function's status same as shell command status
say $^F;#system  max filehandle usually is 2 (0,1,2)
say $^O;#operator os name
say $^X;#execute binary produce name
say $!;

{
	local $/=":";  #$/ $RS input record separated sign default sign "\n"
	#local $/;	#when $/ is null read all record from file
	#local $/=\2048; #read size 2k
	open FILE,"<","/etc/passwd" or die $!;
	while (<FILE>) {
		chomp;
		print;
	}
}

sub println {
	local $\="\n"; #$\ $ORS output record separated sign
	print @_;
}
&println("hello world");

my	@array=qw/php python perl/;
print @array,"\n";  
print "@array","\n"; #$, $OFS print the string separated sign default sign  is blank

#the regex special variable
my	$string="beforehelloafter";
$string=~/h(el)lo/;
say $&; #$& $MATCH the string matched by the last successful pattern match 
say $`; #$` $PREMATCH the string preceding whatever was matched by the last successful pattern match
say $'; #$' $POSTMATCH the string following whatever was matched by the last successful pattern match
say $1; #$1 the ()-embraced matchs of the last pattern match


say %INC; #print the use module's direction


