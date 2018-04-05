#!/usr/bin/perl
# runtime.plx
use strict;
use warnings;

#Looking at the difference between my and local for scope
#My is lexical scope - anything between blocks
#Local is runtime scope - anything between blocks and anything called from within the blocks
#Basically you never want to use local

my $x = 10; 
$_ = "alpha";
{
	my $x = 20;
	local $_ = "beta";
	#x will be the x set as 10
	#local will be beta for this call 
	somesub();
}
somesub();
sub somesub {
	print "\$x is $x\n";
	print "\$_ is $_\n";
}