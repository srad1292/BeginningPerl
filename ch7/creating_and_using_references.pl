#!usr/bin/perl
use warnings;
use strict;

#Create a reference to data that already exists
my @array = (1, 2, 3, 4, 5);
#Use a backslash in front of the variable that stores the data to create a reference to it
my $array_reference = \@array;
#Access a reference by using the reference in {} wherever the variable would be used
for (@{$array_reference}){
	print "Value: $_\n";
}
print "The last index of the array is: $#{$array_reference}\n";
print "The value of that index is: ${$array_reference}[$#{$array_reference}]\n";
#Modify the reference
print "Push 6 to the reference\n";
push @{$array_reference}, 6;
print "Array is now: @array\n";
print "Reference is now @{$array_reference}\n\n\n";

#For a scalar
my $scalar = 6;
my $scalar_reference = \$scalar;
print "The value of the referenced scalar is: ${$scalar_reference}\n\n\n";

#For a hash
my %hash = (
	first => "John",
	last => "Doe",
);
my $hash_reference = \%hash;
#Access a hash reference
print "Getting every pair from a hash reference\n";
for (keys %{$hash_reference}){
	print "$_: ${$hash_reference}{$_}\n";
}
print "\n\n";


#Putting references in an array
my $a = 1;
my $b = 3;
my $c = 5;
my @array_of_ref = (\$a, \$b, \$c);
my @array_of_ref2 = \($a, $b, $c);
print "Getting the value of each reference in an array of references\n";
for (@array_of_ref){
	print "Value: ${$_}\n";
}
print "\n\n";

#Putting arrays in arrays
my @inner_array = (4, 5, 6);
my @outer_array = (1, 2, 3, \@inner_array, 7, 8);

#Creating an anonymous array reference by using [] instead of ()
my $anon_array_reference = [1, 2, 3, 4, 5];

#Create an anonymous hash reference usings {} instead of ()
my $anon_hash_reference = {
	apple => "pomme",
	pear => "poire",
};

#Anonymous mXm array
my $mXm_array = [[1, 2, 3, 4], [5, 6, 7, 8], [9, 10, 11, 12], [13, 14, 15, 16]];
#Iterating through all elemnts
for my $outer (@{$mXm_array}){
	for my $inner ( @{$outer}){
			print "$inner ";
	}
	print "\n";
}
print "\n\n";
#Use arrow notation to access elements
my $x = $#{$mXm_array};
my $y = $#{$mXm_array->[0]};
for my $i (0 .. $x){
	for my $j (0 .. $y){
		print "$mXm_array->[$i][$j] ";
	}
	print "\n";
}
