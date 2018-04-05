#!usr\bin\perl
use warnings;
use strict;

#For through an array
my @array = (10, 20, 30, 40);
print "Before: @array\n";
for (@array) { $_ *= 2; }
print "After: @array\n\n";

#For through an array with an index
my @questions = qw(Java Python Perl C);
my @punchlines = (
	"None. Change it once, and it's the same everywhere.",
	"One. He just stands below the socket and the world revolves around him.",
	"A million. One to change it, the rest to try and do it in fewer lines.",
	'"CHANGE?!!"'
);
for (0..$#questions) {
	print "How many $questions[$_] ";
	print "programmers does it take to change a lightbulb?\n";
	sleep 2;
	print $punchlines[$_], "\n\n";
	sleep 1;
}