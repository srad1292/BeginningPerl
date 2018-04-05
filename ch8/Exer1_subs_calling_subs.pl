#!/usr/bin/perl
use warnings;
use strict;

my $counter = 0;

sub sub1{
	print "$counter: sub1\n";
	$counter++;
	sub2() unless $counter == 250;
}

sub sub2{
	print "$counter: sub2\n";
	$counter++;
	sub3() unless $counter == 250;
}

sub sub3{
	print "$counter: sub3\n";
	$counter++;
	sub1() unless $counter == 250;
}

sub1();