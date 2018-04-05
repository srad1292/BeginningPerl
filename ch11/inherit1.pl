#!/usr/bin/perl
use warnings;
use strict;
use Employee;

my $person = Employee->new(
	surname => "Galiiei",
	forename => "Galileo",
	address => "9.81 Pisa Apts.",
	occupation => "bombardier"
);

print "This person's surname: ", $person->surname(), "\n";

$person->salary("12000");
print "Initial salary: ", $person->salary(), "\n";
print "Salry after raise:  ", $person->raise()->salary(), "\n";
