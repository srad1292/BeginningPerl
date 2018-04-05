#!/usr/bin/perl
use strict;
use warnings;

#Arithmetic
#+ and -
print "21 plus 25 is: ", 21 + 25, "\n";
print "25 minus 21 is: ", 25 - 21, "\n";
print "8 times 4 is: ", 8 * 4, "\n";

# * and precedence
print 3 + 7 * 15, "\n";
print (3+7) * 15;
print "\n";
print ((3+7) * 15);
print "\n";

# /
print "269 divided by 3 is: ", 269 / 3, "\n";

# **
print 2**3, "\n";
print -2**4, "\n";
print -(2**4);
print "\n";

# %
print 15/6;
print "\n";
print 15%6;
print "\n\n";

#Bitwise

#&
print "51 AND 85: ", 51 & 85, "\n";

#|
print "204 OR 85: ", 204 | 85, "\n";

#^ 
print "204 XOR 170: ", 204 ^ 170, "\n";

#~
print "NOT 85: ", ~85, "\n\n\n";

#Truthfulness
print "2 == 4: ", 2 == 4, "\n"; 
print "2 == 2: ", 2 == 2, "\n"; 
print "2 != 4: ", 2 != 4, "\n";
print "Five > six? ", 5 > 6, "\n";
print "Seven < sixteen? ", 7 < 16, "\n";
print "Two == two? ", 2 == 2, "\n";
print "One > one? ", 1 > 1, "\n";
print "Six != seven? ", 6 != 7, "\n"; 
print "Seven <= sixteen? ", 7 <= 16, "\n";
print "Two >= two? ", 2 >= 2, "\n";
print "six <==> nine? ", 6 <=> 9, "\n";
print "seven <==> seven? ",7 <=> 7, "\n";
print "eight <==> four? ", 8 <=> 4, "\n\n\n";


#Boolean
print "6 > 3 && 12 > 4: ", 6 > 3 && 12 > 4, "\n";
print "6 > 10 && 12 > 4: ", 6 > 10 && 12 > 4, "\n";
print "6 > 10 || 12 > 4: ", 6 > 10 || 12 > 4, "\n";
print "!2: ", !2, "\n";
print "1 > 0 and 2 > 1: ", (1 > 0 and 2 > 1), "\n";















