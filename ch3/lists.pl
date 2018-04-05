#!usr\bin\perl
use warnings;
use strict;

print ("Hello, ", "World", "\n");
print ("Words ", 42, " and numbers\n"); 

print(("Ketchup", "Mustard", "Oil", "Soy")[2], "\n");

my $month = 3;
print qw(
	January February March
	April May June
	July August September
	October November December
)[$month];
print "\n";
print qw(
	January February March
	April May June
	July August September
	October November December
)[5/2];
print "\n";
print qw(
	January February March
	April May June
	July August September
	October November December
)[-2];
print "\n";

#List Slicing
print ((19, 68, 47, 60, 53, 51, 58, 55, 47)[(4, 5, 6)]);
print "\n";

#Lists on left side of equals
my ($mone, $mtwo) = (1, 3);
#right side is built up first so this effectively swaps the values
($mone, $mtwo) = ($mtwo, $mone);
print ($mone, " ", $mtwo, "\n\n\n");

#Ranges
print (1 .. 6);
print "\n";
print (reverse(1 .. 6));
print "\n";
print (1.4 .. 3.8);
print "\n";
print (-2 .. 4);
print "\n";
print ('a' .. 'k');
print "\n";
print ('a' .. 3);
print "\n";
print (3 .. 'a');
print "\n\n";

#Ranges and Slices
print qw(
	January February March
	April May June
	July August September
	October November December
)[1, 3, 5 .. 7];
print "\n";
