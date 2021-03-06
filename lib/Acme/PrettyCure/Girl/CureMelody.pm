package Acme::PrettyCure::Girl::CureMelody;
use utf8;
use Any::Moose;

with qw/Acme::PrettyCure::Girl::Role Acme::PrettyCure::Girl::Role::Suite/;

use List::MoreUtils qw/any/;

sub human_name   {'北条響'}
sub precure_name {'キュアメロディ'}
sub age          {14}
sub challenge { '爪弾くは荒ぶる調べ! キュアメロディ!' }

before 'transform' => sub {
    my ($self, @buddies) = @_;

    die "奏がいないと変身できないニャ!" unless any {ref($_) =~ /CureRhythm/} @buddies;

    unless ($buddies[0] && $buddies[0]->is_precure) {
        $self->say('絶対に許さない' . ('!' x (scalar(@buddies)+1)) );
    }
};

no Any::Moose;
__PACKAGE__->meta->make_immutable;

1;
