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
    my $java = which 'java';
    exec $java, '-jar', $self->get_jar, @_;
}

__PACKAGE__->meta->make_immutable;

=head1 NAME

Alien::Ditaa - Use the ditaa text to diagram package in perl

=head1 SYNOPSIS

    use Alien::Ditaa;
    my $ditaa = Alien::Ditaa->new;
    $ditaa->run_ditaa(@args);

=head1 DESCRIPTION

Trivial wrapper to run ditaa from perl.

=head1 SEE ALSO

L<http://ditaa.sourceforge.net>

=head1 INCLUDED SOFTWARE

An unmodified copy of the latest varion of ditaa.jar is included in
this package. The latest version and source code can be obtained
from the URI above.

=head1 AUTHOR

    Tomas Doran (t0m) C< bobtfish@bobtfish.net >

=head1 COPYRIGHT

Copyright 2009 state51 (L<http://www.state51.co.uk>)

=head1 LICENSE

Licensed under the terms of the GNU GPL.

=cut

