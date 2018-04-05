#!/usr/bin/perl
use warnings;
use strict;

#Basic word matching
my $sentence = "Nobody wants to hurt you... 'cept, I do hurt people sometimes, Case.";
if($sentence =~ /people/){
	print "The word \"people\" shows up in the sentence\n\n";
}

#Basic word matching not found
my $sentence2 = "Nobody wants to hurt you... 'cept, I do hurt them sometimes, Case.";
if($sentence2 !~ /people/){
	print "The word \"people\" does not shows up in the sentence\n\n";
}

#Match a phrase
if($sentence =~ /I do hurt/){
	print "The phrase \"I do hurt\" shows up in the sentence\n\n";
}

#Modify to ignore case
if ($sentence =~ /case/i) {
	print "I guess it's just the way I'm made.\n\n";
} 
else {
	print "Case? Where are you, Case?\n\n";
}