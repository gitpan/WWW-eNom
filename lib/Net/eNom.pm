package Net::eNom;

use strict;
use warnings;
use utf8;
use Any::Moose;

use parent "WWW::eNom";

warnings::warnif(
	deprecated => "This module is deprecated; use WWW::eNom instead." );

our $VERSION = 'v1.1.0'; # VERSION
# ABSTRACT: DEPRECATED: namespace retired

1;
