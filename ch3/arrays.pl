#!usr\bin\perl
use warnings;
use strict;

#Arrays
my @days = qw(Sun Mon Tues Wed Thur Fri Sat);
print "@days ", "\n";

#scalar variable set to an array sets it to the length of the array
my $days = @days;
print $days, "\n\n";

#Setting one array to another
my @days2 = @days;
$days[1] = "Monday";
print "@days ", "\n";
print "@days2 ", "\n\n";

#Scalar operator
print "@days ", "\n";
print scalar @days;
print "\n\n";

#Accessing an array
print $days[0], "\n";
print $days[1], "\n";
print $days[2], "\n\n\n";

#Accessing Multiple Elements
print "@days[1 .. 4] ", "\n";
@days[3 .. 5] = ("Wednesday", "Thursday", "Friday");
print "@days ", "\n\n";

#Swapping elements
@days[3,4] = @days[4,3];
print "@days ", "\n";