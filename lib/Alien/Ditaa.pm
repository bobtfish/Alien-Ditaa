package Alien::Ditaa;
use Moose;
use Method::Signatures::Simple;
use File::ShareDir qw/module_dir/;
use Path::Class qw/dir file/;
use File::Which qw/which/;
use namespace::autoclean;

our $VERSION = '0.001';
$VERSION = eval $VERSION;

method get_installed_dir {
    return dir( module_dir('Alien::Ditaa') );
}

method get_jar {
    file( $self->get_installed_dir, 'ditaa0_9.jar' );
}

method run_ditaa {
    shift;
    my $java = which 'java';
    exec $java, '-jar', $self->get_jar, @_;
}

__PACKAGE__->meta->make_immutable;

