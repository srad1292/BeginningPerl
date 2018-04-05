#!/usr/bin/perl
# tail.plx
use warnings;
use strict;

open FILE, "eight_lines.txt" or die $!;
my @last5;
while (<FILE>) {
	push @last5, $_; # Add to the end
	if(@last5 > 5){
		shift @last5; # Take from the beginning
	}
}
print "Last five lines:\n", @last5;
print "\n"x3;
close FILE;

#line seperator
$/ = "\n%\n";
my @lines;
open FILE, "custom_lines.txt" or die $!;
while (<FILE>){
	chomp $_;
	print "Line: $_\n";
}
print "\n"x3;
close FILE;

#read the whole file into one line
open FILE, "eight_lines.txt" or die $!;
my $text_doc;
$/ = undef;
$text_doc = <FILE>;
print $text_doc;
print "\n"x3;
close FILE;