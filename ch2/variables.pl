#!usr/bin/perl
use strict;
use warnings;

my $name = "fred";
print "His name is ", $name, "\n";
$name = "bob";
print "His name is now ", $name, "\n\n";

my $a = 6*9;
my $b = $a + 3;
my $c = $b - $a;
print $a, " ", $b, " ", $c, "\n";
$a += $b;
print $a, "\n";

$a=4;
$b=10;
print "Our variables are ", $a, " and ", $b, "\n";
$b=$a++;
print "After incrementing, we have ", $a, " and ", $b, "\n";
$b=++$a*2;
print "Now, we have ", $a, " and ", $b, "\n";
$a=--$b+4;
print "Finally, we have ", $a, " and ", $b, "\n\n";

#Interpolation

my $fname = "fred";
print "My name is ", $fname, "\n";
print "My name is $fname\n";
print 'My name is $fname', "\n";
my $salutation = "My name is $fname\n";
print $salutation;
my $times = 8;
print "This is the ${times}th time.\n";