package Acme::PrettyCure::Girl::CureFlower;
use utf8;
use Any::Moose;
use Time::Piece;

with 'Acme::PrettyCure::Girl::Role';

sub human_name   {'花咲薫子'}
sub precure_name {'キュアフラワー'}
sub age          { 67 }
sub challenge { qw(聖なる光に輝く一輪の花、キュアフラワー！) }

before 'transform' => sub {
    my ($self,) = @_;

    my $now = localtime;
    unless ( $now->mon == 12 && $now->mday == 24 ) {
        die "CureFlower can transform only holy night";
    }
};


no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
