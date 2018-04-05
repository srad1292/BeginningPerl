#!/usr/bin/perl
use warnings;
use strict;

my $a = 5;
print "$a\n";
#Pass a reference to a sub
increment(\$a);
#The print the value in the variable after the sub
print "$a\n";
sub increment {
	my $reference = shift;
	$$reference++;
}



