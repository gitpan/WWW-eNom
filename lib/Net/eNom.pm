package Net::eNom;

use strict;
use warnings;
use utf8;
use Moo;

extends 'WWW::eNom';

warnings::warnif(
    deprecated => 'This module is deprecated; use WWW::eNom instead.'
);

our $VERSION = 'v1.2.5'; # VERSION
# ABSTRACT: DEPRECATED: namespace retired

1;

=encoding utf8

=head1 NAME

Net::eNom - Interact with eNom, Inc.'s reseller API

=head1 SYNOPSIS

    use Net::eNom;

=head1 DESCRIPTION

This module is a subclass of L<WWW::eNom> with no additional features. It exists
to provide backward compatibility with the present distribution's previous
namespace.

=head1 AUTHOR

Richard Simões, C<< <rsimoes AT cpan DOT org> >>

Original version by Simon Cozens.

=head1 COPYRIGHT & LICENSE

Copyright © 2013 Richard Simões. This module is released under the terms of the
B<MIT License> and may be modified and/or redistributed under the same or any
compatible license.
