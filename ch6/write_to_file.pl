#!/usr/bin/perl
# tail.plx
use warnings;
use strict;

open IN, "eight_lines.txt" or die $!;
open OUT, ">sorted_eight_lines.txt" or die $!;
my @lines = <IN>;
@lines = sort @lines;
print OUT @lines;
	