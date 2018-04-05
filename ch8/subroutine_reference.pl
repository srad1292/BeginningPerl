#!/usr/bin/perl
use warnings;
use strict;

#Declare a subroutine
sub print_wibble {
	print "wibble\n";
}
#Create a reference to the subroutine
my $sub_ref = \&print_wibble;

#3 ways to call the subroutine reference
&{$sub_ref};
&$sub_ref();
$sub_ref->();