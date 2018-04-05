#!/usr/bin/perl
use warnings;
use strict;

#End of string match
my $sentence = "This is a sentence.";
if($sentence =~ /\.$/){
	print "The sentence ends with a full stop.\n\n";
}
else{
	print "The sentence does not end with a full stop\n\n";
}

#Beginning of sting match
if($sentence =~ /^This/){
	print "The sentence starts with 'This'.\n\n";
}
else{
	print "The sentence does not start with 'This'.\n\n";
}