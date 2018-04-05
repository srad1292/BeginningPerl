package Employee;
#Employee1.pm
use Person;
use warnings;
use strict;
use Carp;
our @ISA = qw(Person);

sub _init {
	my $self = shift;
	my $employer = $self->employer || "unknown";
	unless (ref $employer) {
		my $new_o = Person->new( surname => $employer );
		$self->employer($new_o);
	}
	$self->SUPER::_init();
}

sub employer {
	my $self = shift;
	unless (ref $self) {
		croak "Should call employer() with an object, not a class";
	}
	my $data = shift;
	if(defined $data){
		$self->{employer} = $data;
	}
	return $self->{employer};
}

sub position {
	my $self = shift;
	unless (ref $self) {
		croak "Should call position() with an object, not a class";
	}
	my $data = shift;
	if(defined $data){
		$self->{position} = $data;
	}
	return $self->{position};
}

sub salary {
	my $self = shift;
	unless (ref $self) {
		croak "Should call salary() with an object, not a class";
	}
	my $data = shift;
	if(defined $data){
		$self->{salary} = $data;
	}
	return $self->{salary};
}

sub raise {
	my $self = shift;
	my $newsalary = $self->salary + 2000;
	$self->salary($newsalary);
	return $self;
}