#!usr/bin/perl
use strict;
use warnings;

sub sum_of_two_squares ($$);
#Define subroutines at the top to allow them to be called
#before being declared for top-down programming
use subs qw(hello3 sum);#Define this prototype to tell perl that the sub expects two parameters
hello3();
my $a_sum = sum(2,4);

sub hello3{
	print "Hello from this subroutine!\n\n";
}
sub sum{
	my $a = shift;
	my $b = shift;
	return $a+$b;}print "Sum returned as: $a_sum\n\n";
#Declare a sub that expects two arguments
my $first = 4;
my $second = 5;
print "The sum of the squares of $first and $second is: ";
print sum_of_two_squares($first, $second), "\n\n";
sub sum_of_two_squares($$){
	my ($a, $b) = (shift, shift);
	return ($a**2)+($b**2);
}