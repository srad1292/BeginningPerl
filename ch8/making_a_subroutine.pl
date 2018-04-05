#!usr/bin/perl
use strict;
use warnings;

#Subroutine declaration
sub version {
	print "Beginning Perl's \"Hello, world.\" version 2.0\n";
}

#Call the subroutine
version();
&version;
version;

print "\n\n";

sub total {
	my $total = 0;
	$total += $_ for @_;
	print "The total is $total\n";
}

#Call the subroutine and pass in values
total(111, 107, 105, 114, 69);
total(1 ... 100);
print "\n\n";

#Implicitly return a value
sub ret_total {
	my $total = 0;
	$total += $_ for @_;
	$total;
}

my $sum_of_100 = ret_total(1 ... 100);
print "Sum of 100 digits is: $sum_of_100\n\n\n";

#Pass in and return array of values instead of a singular scalar
#Explicitly return the array
sub secs2hms {
	my ($h,$m);
	#Get the first argument passed in by using shift
	my $seconds = shift;
	$h = int($seconds/(60*60)); $seconds %= 60*60;
	$m = int($seconds/60); $seconds %= 60;
	#Explicitly return an array of values
	return ($h,$m,$seconds);
}
#Create an array and fill it with the return values of the subroutine
my ($hours, $minutes, $seconds) = secs2hms(3723);
print "3723 seconds is $hours hours, $minutes minutes and $seconds seconds";
print "\n";