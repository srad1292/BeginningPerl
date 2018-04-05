#!/usr/bin/perl
use warnings;
use strict;


my $quote = q("I wonder what the Entish is for 'yes' and 'no'," he thought.);

print "Enter some text to find: ";
my $pattern = <STDIN>;
chomp($pattern);
if ($quote =~ /$pattern/) {
	print "The text matches the pattern '$pattern'.\n";
} else {
	print "'$pattern' was not found.\n";
}