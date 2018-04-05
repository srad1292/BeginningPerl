#!/usr/bin/perl
use warnings;
use strict;

my $target = 12;
my $guess = 0;
while ($guess != $target){
	print "Guess my number!\n";
	print "Enter your guess: ";
	$guess = <STDIN>;
	if ($target == $guess) {
		print "That's it! You guessed correctly!\n";
		last;
	}
	elsif ($guess > $target) {
		print "Your number is bigger than my number\n";
		
	}
	else {
		print "Your number is less than my number\n";
	}
}