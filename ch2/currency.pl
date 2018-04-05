#!usr/bin/perl
use warnings;
use strict;


my $yen = 180;
print "49518 Yen is ", (49_518/$yen), " pounds\n\n";

#Standard Input
print "Please enter the exchange rate: ";
my $fluid_yen = <STDIN>;
print "49518 Yen is ", (49_518/$fluid_yen), " pounds\n"; 