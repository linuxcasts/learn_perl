#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: host.pl
#
#        USAGE: ./host.pl  
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
#      CREATED: 11/25/2015 02:34:52 PM
#     REVISION: ---
#===============================================================================

use strict;
use warnings;
use utf8;
use Socket;
use v5.10;
{
my ($name,$alias,$addrtype,$length,@address)=gethostbyname('www.baidu.com');
say "name is $name alias is $alias addrtype is $addrtype length is $length";
my	$addres=join('.',unpack("C4",scalar gethostbyname "www.baidu.com"));
say $addres;
}

{
my	$iaddr=inet_aton("127.1");
my	$names=gethostbyaddr($iaddr,AF_INET);
print "host name is $names\n";
#cat /etc/hosts
while (my ($name,$alias,$addrtype,$length,@address)=gethostent())
{
	say "$name/$alias/$addrtype/$length";
}
}

#cat /etc/protocols
{
my ($name,$alias,$protocal_num)=getprotobyname('tcp');
say "name is $name alias is $alias protocal num is $protocal_num";
}
{
my ($name,$alias,$protocal_num)=getprotobynumber(10);
say "name is $name alias is $alias protocal num is $protocal_num";
}
{
while (my ($name,$alias,$protocal_num)=getprotoent()){
	say "name is $name alias is $alias protocal num is $protocal_num";
}
}

#cat /etc/services
{
my ($name,$alias,$port_num,$protocal_num)=getservbyname('http','tcp');
say "name is $name alias is $alias port num is $port_num protocal num is $protocal_num";
}
{
my ($name,$alias,$port_num,$protocal_num)=getservbyport(80,'tcp');
say "name is $name alias is $alias port num is $port_num protocal num is $protocal_num";
}
=begin
{
while (my ($name,$alias,$port_num,$protocal_num)=getserven()){
	say "name is $name alias is $alias protocal num is $protocal_num";
}
}
=cut

#cat /etc/networks
{
my ($name,$alias,$addrtype,$net)=getnetbyname('loopback');
say "name is $name alias is $alias addrtypeis $addrtype net is $net";
}
=begin
{
while (my ($name,$alias,$addrtype,$net)=getnetent())
{
	say "name is $name alias is $alias addrtypeis $addrtype net is $net";
}
}
{
my $iaddr=inet_aton("127.0");
my ($name,$alias,$addrtype,$net)=getnetbyaddr($iaddr,AF_INET);
say "name is $name alias is $alias addrtypeis $addrtype net is $net";
}
=cut

my	$login=getlogin || getpwuid($<) || "hello";
print "login id is $login\n";
say getlogin;

say "current process group id is ",getpgrp();
say "parent process id is ",getppid();

my	$key=getc(STDIN);
say "enter value is $key";




















