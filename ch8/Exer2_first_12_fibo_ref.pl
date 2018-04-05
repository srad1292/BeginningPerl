#!/usr/bin/perl
use warnings;
use strict;

sub first_twelve{
	my $ref = shift;
	push @$ref, ($ref->[-1] + $ref->[-2]);
}

my @seq = (1, 1);
for(1 .. 10){
	first_twelve(\@seq);
}
print "@seq\n";