#!usr/bin/perl
use strict;
use warnings;


#Define subroutines at the top to allow them to be called
#before being declared for top-down programming
use subs qw(hello3 sum);

my $a_sum = sum(2,4);

sub hello3{
	print "Hello from this subroutine!\n\n";
}

	my $a = shift;
	my $b = shift;
	return $a+$b;

my $first = 4;
my $second = 5;
print "The sum of the squares of $first and $second is: ";
print sum_of_two_squares($first, $second), "\n\n";
sub sum_of_two_squares($$){
	my ($a, $b) = (shift, shift);
	return ($a**2)+($b**2);
}