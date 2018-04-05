#!usr\bin\perl
use warnings;
use strict;

#Convert the joke machine from an array to a hash
my %joke_machine = (
	Java => "None. Change it once, and it's the same everywhere.",
	Python => "One. He just stands below the socket and the world revolves around him.",
	Perl => "A million. One to change it, the rest to try and do it in fewer lines.",
	C => '"CHANGE?!!"'
);

for(keys %joke_machine){
	print "How many $_ programmers does it take to change a lightbulb?\n\n";
	sleep 2;
	print "$joke_machine{$_}\n\n\n";
	sleep 1;
}