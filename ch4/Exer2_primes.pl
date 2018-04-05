#!/usr/bin/perl
use warnings;
use strict;

print "Input a number that is greater than 2: ";
my $input = <STDIN>;
for my $outer ((3 .. $input)){
	my $bool = 0;
	for my $inner ((2 .. $outer/2)){
		if($outer % $inner == 0){
			$bool = 1;
			last;
		}
	}
	if($bool == 0){
		print "$outer\n";
	}
	$bool = 0;
}
