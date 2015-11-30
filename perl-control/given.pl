#!/usr/bin/env  perl
use v5.10; # at least for Perl 5.10
#use feature "switch";
use warnings;
use strict;
 
my $color;
my $code;
 
print("Please enter a RGB color to get its code:\n");
 
$color = <STDIN>;
 
chomp($color);
$color = uc($color);
 
given($color){
 
     when ('RED') {  $code = '#FF0000'; }
 
     when ('GREEN') {  $code = '#00FF00'; }
 
     when ('BLUE') {  $code = '#0000FF'; }
 
     default{
         $code = '';
     }
}
if($code ne ''){
   print("code of $color is $code \n");
}
else{
    print("$color is not RGB color\n");
}