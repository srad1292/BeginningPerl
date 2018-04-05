#!/usr/bin/perl
use warnings;
use strict;

#foreach
my @array = (1, 3, 5, 7, 9);
my $i;
foreach $i (@array) {
	print "This element: $i ";
}
print "\n"x2;

#for
for $i (@array) {
	print "This element: $i ";
}
print "\n"x2;


#iterator inside vs outside
for my $o (@array) {
	print "This element: $o ";
}
print "\n"x2;

$i = "hello there";
for $i (@array) {
	print "This element: $i ";
}
print "$i","\n"x3;

#for loop continued
my @array = qw(the quick brown fox ran over the lazy dog);
for (6, 3, 8, 2, 5, 4, 0, 7) {
	print "$array[$_] ";
}
print "\n\n";

my $word;
for $word (@array) {
	print "$word ";
}
print "\n\n\n";

#While loop
my $countdown = 5;
while($countdown > 0){
	print "$countdown...\n";
	$countdown--;
} 

#while(<STDIN>){
#	chomp;
#	die "!enod llA\n" unless $_;
#	my $sdrawkcab = reverse $_;
#	print "$sdrawkcab\n";
#}


#do while
#do {
#	$_ = <STDIN>;
#	chomp;
#	my $sdrawkcab = reverse $_;
#	print "$sdrawkcab\n";
#} while ($_);
#print "!enod llA\n";

#until
$countdown = 5;
until ($countdown-- == 0) {
	print "Counting down: $countdown\n";
}

print "\n\n";

#last to break out of a loop
my @colors = ("red", "blue", "green", "orange", "yellow");
for my $i(@colors){
	if($i eq "orange"){last;}
	print "$i ";
}
print "\n\n";

#next to go to the next iteration of the loop
for my $i(@colors){
	next if($i eq "orange");
	print "$i ";
}
print "\n\n";



