#!/usr/bin/env perl 
#===============================================================================
#
#         FILE: variable.pl
#
#        USAGE: ./variable.pl  
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
#      CREATED: 10/20/2015 01:36:57 PM
#     REVISION: ---
#===============================================================================

#use strict;
#use warnings;
use utf8;

#single quotes
my	$money	= 9999.99;
print 'I have money $money',"\n";
print "I have money $money","\n";
print 'perl is so good !',"\n";
print 'I like perl \t \t because it is so cool',"\n";
print 'do you like perl,"my freiends!"',"\n";

#dobule quotes
my	$num	= 10000;
print "the number is $num\n";
print "the money is \$num\n";
print "\t hello world\n";
print "hello 'world'\n";

#backquotes
print "now the time is ",`date`;
my	$dir	= `pwd`;
print "now in $dir\n";

#using alternative quotes
print q/hello singel $dir/,"\n";
print q#hello singel $dir#,"\n";
print q{hello singel $dir},"\n";
print q[hello singel $dir],"\n";
print q(hello singel $dir),"\n";

print qq/hello double $dir/,qq{\n};
print qq#hello double $dir#,qq/\n/;
print qq{hello double $dir\n};

print qq/now the time is/, qx/date/;

#scala
my	$age	= 24;
my	$name	= "yaoxiang";
my	$sex	= 'man';
my	$date	= localtime();
print "my name is $name age is $age and i am a $sex and now the time is $date\n";
my	$var	= "net";
print "the name is ${var}work\n";

my	$cellphone	= "xiaomi2s";
my	$cellprice	= 1799.99;
print "the phone is $cellphone and the number is $cellprice\r\n";
my	$email	= '928084353@qq.com';
my	$emails	= qq#952059083\@qq.com#;
print "my email adress is $email and the other email is $emails\n";

#numeric scalar
my $integer = 200;
my $negative = -300;
my $floating = 200.340;
my $bigfloat = -1.2E-23;
my $octal = 0377;
my $hexa = 0xff;

print "\$integer = $integer\n";
print "\$negative = $negative\n";
print "\$floating = $floating\n";
print "\$bigfloat = $bigfloat\n";
print "\$octal = $octal\n";
print "\$hexa = $hexa\n";

#string scalar
my	$vara	= "this is a stinrg scalar";
my	$quote	= 'i am in single quote -$vara';
my	$double	= "this is in double quote -$vara";
my	$escape	= "this is example of escape \thello world!";
print "vara = $vara\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";

#scalar operation
my	$str	= "hello"."perl";
my	$suma	= 100 + 300;
my	$mul	= 33 * 8;
my	$mix	= $str . $mul;
print "str = $str\n";
print "suma = $suma\n";
print "mul = $mul\n";
print "mix = $mix\n";

#multiline stirngs 
my	$stringa	= "this is 
a multiline strings
      hello perl";
print "$stringa\n";




=begin multiline comment
perl 单引号会原样输出 而双引号会对其转义后输出
perl scalar arrays hashes


=cut


#here doucement
my	$a = 123;
$var = << "EOF";
this is the here doucement syntax
print the a value is a = $a 
EOF
print "$var\n";

$var = << 'EOF';
this is the case of single quote 
print the a value is a = $a
EOF
print "$var\n";

#perl arrays
my	@ages = (20..25);
foreach my $a (@ages) {
	print "ages= $a\n";
}

my	@arrays = (100,300,"perl");
my	@arraya = qw/this is a array/;
foreach my $b (@arrays) {
	print "arrays = $b\n";
}
foreach my $c (@arraya) {
	print "arraya = $c\n";
}

my	@days =qw/mon tue wed thu fri/;
print "\@days[0] = @days[0]\n";
print "\@days[4] = @days[4]\n";
print "\@days[-1] = @days[-1]\n";
print "\@days[-5] = @days[-5]\n";

# .. is called range operator
my	@var_10 = (1..10);
my	@var_abc = (a..z);
my	@var_up = (A..Z);
print "@var_10\n";
print "@var_abc\n";
print "@var_up\n";

#array size
print "size:",scalar @var_abc,"\n";
my	$size = @var_up;
print "var_up size is $size\n";
my	$max_index = $#var_up;
print "the max index is $max_index\n";

#push @array,list push the values of the list onto the end of the array
my	@new_array = qw /fedora redhat centos/;
print "1.\@new_array = @new_array\n";
#add one element at the end of the array
push(@new_array,"opensuse");
print "2.\@new_array = @new_array\n";
#add one element at the beginning of the array
unshift(@new_array,"archlinux");
print "3.\@new_array = @new_array\n";
#remove one element from the last of the array
pop(@new_array);
print "4.\@new_array = @new_array\n";
#remove one element from the beginning of the array
shift(@new_array);
print "4.\@new_array = @new_array\n";

#slicing array elements
my	@one_array = qw/python perl java lua sql c/;
my	@two_array	= @one_array[3,4,5];
print "@two_array\n";
my	@thr_array	= @one_array[2..5];
print "@thr_array\n";

#replacing array elements 
my	@new_numbers	= (11..20);
print "before the number is @new_numbers\n";
splice(@new_numbers,5,5,a..e);
print "after the number is @new_numbers\n";

#transform string to array
#define string
my	$var_string = "the-perl-world-are-wonderful";
my	$var_names = "hubei,shanghai,beijing,nanjing";
my	@var_tstring = split('-',$var_string);
my	@var_tnames = split(',',$var_names);
foreach my $x (@var_tstring) {
	print "\@var_tstring = $x\n";
}
print "@var_tnames[3]\n";

#transform array to string
my	$stringaa = join('#',@var_tstring);
my	$stringbb = join('/',@var_tnames);
print "the stringaa is $stringaa\n";
print "the stringbb is $stringbb\n";

#sorting arrays
my	@foods = qw(orange banana apple peace tomato);
print "now is @foods\n";
my	@foods = sort(@foods);
print "now is @foods\n";

#the special varibale
$[ = 1;
print "food at \@foods[1]:$foods[1]\n";
print "food at \@foods[3]:$foods[3]\n";
$[ = 2;
print "food at \@foods[1]:$foods[1]\n";
print "food at \@foods[3]:$foods[3]\n";

#merging arrays
my	@odd =(1..5);
my	@even = (6..10);
my	@odd_even = (@odd,@even);
print "now the array is @odd_even\n";

#select element from lists
my	$lista = (a,b,c,d,e)[-2];
print "the value is $lista\n";
my	@listb	= (a,b,c,d,e)[3..4];
print "the value is @listb\n";

#perl hashes
#my	%hashname =('key1',value1,'key2',value2);
#$hashname{key1}=value1;
#$hashname{key2}=value2;
#$hashname{key3}=value3;


my	%data	= (
	'java' => 1999,
	'perl' => 1989,
	'c++'  => 2000
);
print "$data{'java'}\n";
my	@data_array = @data{'java','c++'}; #extracting slices
print "@data_array\n";

my	@keys = keys %data;
foreach my $i (@keys) {
	print "the value is $i\n";
}
my	@values = values %data;
foreach my $j (@values) {
	print "the key is $j\n";
}
#getting hash sizes
my	$size_keys = @keys;
print "hash size is $size_keys\n";
my	$size_values = @values;
print "hash size is $size_values\n";

#add an element to the hash
$data{'python'} = 2010;
my	@keys_add = keys %data;
my	$valuea = @keys_add;
print "hash size is $valuea\n";

#delete the element from the hash
delete $data{'python'};
my	@keys_del = keys %data;
my	$valueb = @keys_del;
print "hash size is $valueb\n";


#the ? : operator exp1 ? exp2 : exp3;
my	$names = "yaoxiang";
my	$agea = 24;
my	$status;
$status = ($agea > 30) ? "hello" : "world";
print "the status is $status\n";











