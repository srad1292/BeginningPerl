#!usr\bin\perl
use warnings;
use strict;
#Array functions

#Reverse
my @count = (1 .. 5);
for (reverse(@count)){
	print "$_...\n";
	sleep 1;
}
print "Blast Off!\n\n";

#Push and Pop
my @days = qw(Mon Tues Wed Thurs);
print "@days\n";
my $day = pop @days;
print "@days\n";
print "$day\n";
push @days, $day;
print "@days\n";
push @days, "Fri", "Sat", "Sun";
print "@days\n\n";

#Shift and Unshift
#Shift adds elements to the beginning of the list
#Unshift removes the first element of the list
my @shifting = ();
unshift(@shifting, "first");
print "Array: @shifting\n"; 
unshift(@shifting, "seoond", "third");
print "Array: @shifting\n"; 
shift @shifting;
print "Array: @shifting\n\n"; 

#Sorting Strings
my @unsorted = qw(Bob Sam Chris Evan Lucy Sarah);
print "Unsorted: @unsorted\n";
my @sorted = sort @unsorted;
print "Sorted: @sorted\n\n";

#Sorting Numbers
my @us = (11, 22, 1, 5, 3, 2);
print "Unsorted: @us\n";
my @so = sort { $a <=> $b } @us;
print "Sorted: @so\n\n";
