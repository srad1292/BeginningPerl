#!usr/bin/perl
use warnings;
use strict;

print "Enter exchange rate: ";
my $yen = <STDIN>;
print "Enter value 1: ";
my $value1 = <STDIN>;
$value1 /= $yen;
print "Enter value 2: ";
my $value2 = <STDIN>;
$value2 /= $yen;
print "Enter value 3: ";
my $value3 = <STDIN>;
$value3 /= $yen;
print "Converted values are $value1, $value2, $value3\n";