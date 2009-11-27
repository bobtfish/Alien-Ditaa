use strict;
use warnings;
use inc::Module::Install 0.91;

name 'Alien-Ditaa';
all_from 'lib/Alien/Ditaa.pm';

license 'gpl';

requires 'Path::Class';
requires 'File::ShareDir';
requires 'Method::Signatures::Simple';
requires 'Moose';
requires 'namespace::autoclean';

requires_external_bin 'java';

WriteAll;

