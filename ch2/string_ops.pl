#!usr/bin/perl
use strict;
use warnings;

#concat
print "this " . "joins " . "strings " . "together\n";

print "4 * 7 is " . 4 * 7 . "\n";


#repetition
print "Ba" . "na"x3 . "\n";

#numbers and strings
print "12 monkeys" + 0, "\n";
print "Eleven to fly" + 0, "\n";
print "UB40" + 0, "\n";
print "-20 10" + 0, "\n";
print "0x30" + 0, "\n";

#Ascii
print "The character # has an ASCII Value of " . ord("#") . "\n";

#String comparisons
print "chicken cmp egg: ", "chicken" cmp "egg", "\n";
print "dog gt cat: ", "dog" gt "cat", "\n";
print "dog lt lion: ", "dog" lt "lion", "\n";
print "dog eq cat: ", "dog" eq "cat", "\n";
print "cat eq cat: ", "cat" eq "cat", "\n";