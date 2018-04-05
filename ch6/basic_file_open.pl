#!/usr/bin/perl
use warnings;
use strict;

#open and read the contents of a file
open (FH, '<', 'C:\Users\smr12\Documents\beg_perl\ch6\empty.txt') or die $!;
my $line_num = 1;
while (<FH>){
	print $line_num;
	$line_num++;
	print ": $_";
}