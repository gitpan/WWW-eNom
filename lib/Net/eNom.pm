package Net::eNom;

use strict;
use warnings;
use utf8;
use Any::Moose;

use base "WWW::eNom";

warnings::warnif(
	deprecated => "This module is deprecated; use WWW::eNom instead."
);

our $VERSION = 'v1.0.6'; # VERSION
# ABSTRACT: DEPRECATED: namespace retired

1;
