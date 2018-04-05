#!/usr/bin/perl
use warnings;
use strict;
use Person;

my $person = Person->new(
	surname => "Galiiei",
	forename => "Galileo",
	address => "9.81 Pisa Apts.",
	occupation => "bombardier"
);

print "This person's surname: ", $person->surname(), "\n";
#Person->surname;
print "This person's forename: ", $person->forename(), "\n";
print "Old Address: ", $person->address(), "\n";
print "New Address: ", $person->address("2215 Fake Ave."), "\n";
print "This person's occupation: ", $person->occupation(), "\n";
print "Population now: ", Person->headcount, "\n";

my $object2 = Person->new (
	surname => "Einstein",
	forename => "Albert",
	address => "9E16, Relativity Drive",
	occupation => "Plumber"
);
print "Population now: ", Person->headcount, "\n";

print "Everyone we know: \n";
for my $pers(Person->everyone) {
	print $pers->forename, " ", $pers->surname, "\n";
}

print "Their fullname: ", $person->fullname(), "\n";
$person->printletter("Welcome to wherever you're from");