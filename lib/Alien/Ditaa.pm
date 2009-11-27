package Alien::Ditaa;
use Moose;
use Method::Signatures::Simple;
use File::ShareDir qw/dist_dir/;
use Path::Class qw/dir/;
use namespace::autoclean;

our $VERSION = '0.001';
$VERSION = eval $VERSION;

method get_installed_dir {
    return dir( dist_dir('Alien-Ditaa'), 'ditaa0_9' );
}

__PACKAGE__->meta->make_immutable;

