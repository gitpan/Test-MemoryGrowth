use strict;
use warnings;

use Module::Build;

$^O eq "linux" or
   die "OS unsupported - see TODO note about Linux-specific memory usage query\n";

my $build = Module::Build->new(
   module_name => 'Test::MemoryGrowth',
   requires => {
      'Test::Builder' => 0,
   },
   build_requires => {
      'Test::Builder::Tester' => 0,
      'Test::More' => 0,
   },
   license => 'perl',
   create_makefile_pl => 'traditional',
   create_license => 1,
   create_readme  => 1,
);
  
$build->create_build_script;
