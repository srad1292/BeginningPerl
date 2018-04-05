#!usr/bin/perl
use warnings;
use strict;

print "Please enter hex number: ";
my $input = <STDIN>;
print "$input converted to base ten is: ", oct($input), "\n";