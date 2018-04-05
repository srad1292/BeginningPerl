#!/usr/bin/perl
use warnings;
use strict;
#buggy.plx
#Get the following program to work

my %hash;
print "What would you like to do? ('o' for options): ";
my $choice = <STDIN>;
chomp $choice;
until ($choice =~ /^q/i) {
	if ($choice eq "o"){
		options();
	}
	elsif($choice eq "r"){
		my_read();
	}
	elsif($choice eq "l")
	{ 
		list();
	}
	elsif($choice eq "w"){ 
		my_write(); 
	}
	elsif ($choice eq "d") {
		 my_delete(); 
	} 
	elsif ($choice eq "x") { 
		clear();
	}
	else { 
		print "Sorry, not a recognized option.\n"; 
	}
	print "What would you like to do? ('o' for options): ";
	chomp ($choice = <STDIN>);
	
}
sub options {
	print <<"	EOF";
	Options available:
	o - view options
	r - read entry
	l - list all entries
	w - write entry
	d - delete entry
	x - delete all entries
	EOF
}

sub my_read {
	my $keyname = getkey();
	if (exists $hash{"$keyname"}) {
		print "Element '$keyname' has value $hash{$keyname}";
	} 
	else {
		print "Sorry, this element does not exist.\n";
	}
}

sub list {
	foreach (sort keys(%hash)) {
		print "$_ => $hash{$_}\n";
	}
}

sub my_write {
	my $keyname = getkey();
	my $keyval = getval();
	if (exists $hash{$keyname}) {
		print "Sorry, this element already exists.\n"
	} 
	else{
		$hash{$keyname}=$keyval;
	}
}

sub my_delete {
	my $keyname = getkey();
	if (exists $hash{$keyname}) {
		print "This will delete the entry $keyname.\n";
		delete $hash{$keyname};
	}
}

sub clear {
	undef %hash;
}

sub getkey {
	print "Enter key name of element: "; 
	chomp($_ = <STDIN>);
}

sub getval {
	print "Enter value of element: "; 
	chomp($_ = <STDIN>);
}