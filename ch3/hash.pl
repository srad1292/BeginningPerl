#!usr\bin\perl
use warnings;
use strict;
#Hashes

#Create a hash - 1
my %where = (
	"Gary" , "Dallas",
	"Lucy" , "Exeter",
	"Ian" , "Reading",
	"Samantha" , "Oregon"
);

#Create a hash - 2
my %n_where = (
	Gary => "Dallas",
	Lucy => "Exeter",
	Ian => "Reading",
	Samantha => "Oregon"
);

#Array to hash
my @array = qw(Gary Dallas Lucy Exeter Ian Reading Samantha Oregon);
my %arr_where = @array;


#Access a hash
my $gary = $where{Gary};
my $fname = "Ian";
print "Gary lives in $gary\n";
print "$fname lives in $where{$fname}\n\n";

#Adding to a hash
$where{"Eva"} = "Uxbridge";
print "Eva lives in $where{Eva}\n\n";

#Changing a value in a hash
$where{"Eva"} = "Denver";
print "Eva lives in $where{Eva}\n";
$where{$fname} = "Houston";
print "$fname lives in $where{$fname}\n\n";

#Delete from a hash
delete $where{"Eva"};
print "Eva lives in $where{Eva}\n\n\n";

#Iterate over a hash
for(keys %where){
	print "$_ lives in $where{$_}\n";
}