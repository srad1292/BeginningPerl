#!/usr/bin/perl
use warnings;
use strict;

#character classes
my $line = "I wonder what Entish for 'yes' and 'no' is, he thought";
print "Pattern for 'w[aio]nder' found: ";
if($line =~ /w[aio]nder/){
	print "Yes\n\n";
}
else{
	print "No\n\n";
}

print "Pattern for 'Th[^eo]' found: ";
if($line =~ /Th[^eo]/){
	print "Yes, this sentence avoided the sequence 'The' and 'Tho'\n\n";
}
else{
	print "No, the sentence did have a sequence containing either 'the..' or 'tho..'\n\n";
}

print "Did the sentence contain any numbers ie match [0-9]: ";
if($line =~ /[0-9]/){
	print "Yes, this sentence contains at least 1 number\n\n";
}
else{
	print "No, this sentence contains no numbers'\n\n";
}

print "Did the sentence contain any numbers ie match \d: ";
if($line =~ /\d/){
	print "Yes, this sentence contains at least 1 number\n\n";
}
else{
	print "No, this sentence contains no numbers'\n\n";
}

print "Did the match a boundry than any word character than a boundry \b\w\b: ";
if($line =~ /\b\w\b/){
	print "Yes, this sentence matches\n\n";
}
else{
	print "No, this sentence doesn't match\n\n";
}