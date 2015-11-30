#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: user_group.pl
#
#        USAGE: ./user_group.pl  
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
#      CREATED: 11/16/2015 04:01:25 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use 5.010;

say "the current username is: ",getlogin;
say "login name is: ",(getpwuid($<))[0];
say "encrypted passwd is: ",(getpwuid($<))[1];
say "uid is : ",(getpwuid($<))[2];
say "gid is : ",(getpwuid($<))[3];
say "user's quota: ",(getpwuid($<))[4];
say "user's fullname: ",(getpwuid($<))[5];
say "user's information: ",(getpwuid($<))[6];
say "the user home dir: ",(getpwuid($<))[7];
say "the user shell: ",(getpwuid($<))[8];

{#getpwuid($uid) get user's information from /etc/passwd
my @information=my ($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=getpwuid(0);
foreach my $info (@information) {
	say $info;
}
}

{
my @information=my ($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=getpwent();
foreach my $info (@information) {
	say $info;
}
}

{#getpwnam($user)
my @information=my ($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=getpwnam('root');
foreach my $info (@information) {
	say $info;
}
}
{#loop read data from /etc/passwd
while (my ($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=getpwent())
{
	say "$name:$passwd:$uid:$gid:$quota:$comment:$gcos:$dir:$shell";
}
setpwent(); #rewind the database /etc/passwd return nothing
while (my ($name,$passwd,$uid,$gid,$quota,$comment,$gcos,$dir,$shell)=getpwent())
{
	say "$name:$passwd:$uid:$gid:$quota:$comment:$gcos:$dir:$shell";
}
endpwent();#close the database return nothing
}

{
my @information=my ($name,$passwd,$gid,$members)=getgrnam('yao');
foreach my $info (@information) {
	say $info;
}
}

{
my @information=my ($name,$passwd,$gid,$members)=getgrgid(0);
foreach my $info (@information) {
	say $info;
}
}

{
my @information=my ($name,$passwd,$gid,$members)=getgrent();
foreach my $info (@information) {
	say $info;
}
}

while (my($name,$gid)=(getgrent)[0,2]) {
	say "$name gid is  $gid";
}

#getpwent() reading from file /etc/passwd
while (my($name,$dir)=(getpwent)[0,7]) {
	print "home for $name is $dir\n"; #setpwent() rewind the database /etc/passwd same sa setgrent() 
}

