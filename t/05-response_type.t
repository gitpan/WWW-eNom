#!/usr/bin/env perl

use strict;
use warnings FATAL => "all";
use Test::More tests => 3;
use Test::Exception;
use WWW::eNom;

throws_ok {
    WWW::eNom->new(
        username      => "resellid",
        password      => "resellpw",
        test          => 1,
        response_type => "json" )
} qr/response_type must be one of/, "Unsupported response type caught okay.";

my $enom;
lives_ok {
    $enom = WWW::eNom->new(
        username      => "resellid",
        password      => "resellpw",
        test          => 1,
        response_type => "html" )
} "Supported response type okay.";

SKIP: {
    eval { require HTML::Parser; HTML::Parser->VERSION(v3.67) };
    skip "HTML::Parser required for testing", 1 if $@;
    my $response = $enom->Check( Domain => "perl.org" );
    my $html = HTML::Parser->new;
    lives_ok {
        $html->parse($response);
        $html->eof;
    } "HTML response okay" }
