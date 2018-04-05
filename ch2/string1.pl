#!/usr/bin/perl
use strict;
use warnings;

#Showing the difference between single and double using tab and new line
print '\tThis is a single quoted string  \n';
print "\tThis is a double quoted string\n";

print "\n\n";

#Showing the use of the escape character \
print 'C:\Windows\User', "\n";
print "C:\\Windows\\User\n";

print 'ex\\ er\\' , ' ci\' se\'' , "\n";

print "\n\n";

#Can do "'" and '"'

print "This can't be, but it is\n";
print '"Stop", was said', "\n\n";

#Setting delimiters
print qq|'"Hi," said Jack. "Have you read /. today?"'\n|;
print qq#'"Hi," said Jack. "Have you read /. today?"'\n#;
print qq('"Hi," said Jack. "Have you read /. today?"'\n);
print qq<'"Hi," said Jack. "Have you read /. today?"'\n>;

print "\n\n";

#here-document
print<<EOF;
This is a here-document. It starts on the line after the two arrows,
and it ends when the text following the arrows is found at the beginning
of a line, like this:
EOF

print "\n\n";

#Printing binary/octal/hex

print "0x30\n";
print "030\n";
print hex("0x30"), "\n";
print oct("030"), "\n";