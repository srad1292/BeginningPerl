#!usr\bin\perl
use warnings;
use strict;

#(a, b) = (b, a) swaps items
#What happens if there are more on the right than left
my ($a, $b) = (1, 2, 3, 4);
print "A: $a\n";
print "B: $b\n\n\n"; 

#What happens if there are more on the left than right
my($aa, $bb, $cc) = (1, 2);
print "A: $aa\n";
print "B: $bb\n"; 
print "C: $cc\n\n\n";


#What happens if there is a list on the left but scalar on the right
my ($aaa, $bbb) = 4;
print "A: $aaa\n";
print "B: $bbb\n\n\n"; 

#What happens if there is a scalar on the left but list on the right
my $aaaa = (1,2,3,4,5);
print "A: $aaaa", "\n"x3;