#!/usr/bin/perl
use warnings;
use strict;

sub customer_menu {
	print "Welcome back!\n";
}

sub sales_menu {
	print "What would you like to buy?\n";
}


my %menu = (
	c => \&customer_menu,
	s => \&sales_menu,
);
print "Type c for customer menu, s for sales menu and o for orders menu.\n";
chomp (my $choice = <>);
if (exists $menu{$choice}) {
	# Call it!
	$menu{$choice}->();
} else {
	print "Unknown option.\n";
}

