package Person;
#Class for storing data about a person
use warnings;
use strict;
use Carp;

#Class attributes
my @Everyone;

#Constructor and initialization
sub new {
	my $class = shift;
	my $self = {@_};
	bless ($self, $class);
	$self->_init;
	return $self;
}

sub _init {
	my $self = shift;
	push @Everyone, $self;
	carp "New object created";
}

#Object methods
sub surname {
	my $self = shift;
	unless (ref $self) {
		croak "Should call surname() with an object, not a class";
	}
	my $data = shift;
	if(defined $data){
		$self->{surname} = $data;
	}
	return $self->{surname};
}

sub forename {
	my $self = shift;
	unless (ref $self) {
		croak "Should call forename() with an object, not a class";
	}
	my $data = shift;
	if(defined $data){
		$self->{forename} = $data;
	}
	return $self->{forename};
}

sub address {
	my $self = shift;
	unless (ref $self) {
		croak "Should call address() with an object, not a class";
	}
	
	my $data = shift;
	if(defined $data){
		$self->{address} = $data;
	}	
	return $self->{address};
}

sub occupation {
	my $self = shift;
	unless (ref $self) {
		croak "Should call occupation() with an object, not a class";
	}
	
	my $data = shift;
	if(defined $data){
		$self->{occupation} = $data;
	}	
	return $self->{occupation};
}

#Class methods
sub headcount {
	return scalar @Everyone;
}

sub everyone {
	return @Everyone;
}

#Utility methods
sub fullname {
	my $self = shift;
	return $self->forename." ".$self->surname;
}

sub printletter {
	my $self = shift;
	my $name = $self->fullname();
	my $address = $self->address();
	my $forename= $self->forename();
	my $body = shift;
	my @date = (localtime)[3,4,5];
	$date[1]++; # Months start at 0! Add one to humanise!
	$date[2]+=1900; # Add 1900 to get current year.
	my $date = join "/", @date;
	print <<EOF;
$name
$address
$date
Dear $forename,
$body
Yours faithfully,
EOF
	return $self;
}

1;