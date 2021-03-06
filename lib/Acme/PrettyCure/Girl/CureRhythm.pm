package Acme::PrettyCure::Girl::CureRhythm;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Suite/;

use List::MoreUtils qw/any/;

sub human_name   {'南野奏'}
sub precure_name {'キュアリズム'}
sub age          {14}
sub challenge { '爪弾くはたおやかな調べ! キュアリズム!' }

before 'transform' => sub {
    my ($self, @buddies) = @_;

    die "響がいないと変身できないニャ!" unless any { ref($_) =~ /CureMelody/ } @buddies;
};

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
