
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "HTML::Parser" => "v3.67",
    "Module::Build" => "0.3601",
    "Moose" => 0,
    "Test::More" => 0,
    "Test::Most" => "0.25",
    "Test::Requires" => 0,
    "ok" => 0,
    "perl" => "5.006"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Interact with eNom, Inc.'s reseller API",
  "dist_author" => [
    "Richard Sim\303\265es <rsimoes AT cpan DOT org>",
    "Simon Cozens <simon AT simon-cozens DOT org>"
  ],
  "dist_name" => "WWW-eNom",
  "dist_version" => "v1.0.4",
  "license" => "lgpl",
  "module_name" => "WWW::eNom",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Any::Moose" => 0,
    "HTTP::Tiny" => 0,
    "ParseUtil::Domain" => "2.09",
    "URI" => 0,
    "XML::LibXML::Simple" => 0,
    "perl" => "5.008"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
