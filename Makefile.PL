
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "translates constants back to named symbols",
  "AUTHOR" => "chromatic <chromatic\@wgz.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Devel-Constants",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Devel::Constants",
  "PREREQ_PM" => {
    "constant" => 0,
    "strict" => 0,
    "subs" => 0,
    "vars" => 0
  },
  "TEST_REQUIRES" => {
    "Test::More" => 0,
    "lib" => 0
  },
  "VERSION" => "1.02",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Test::More" => 0,
  "constant" => 0,
  "lib" => 0,
  "strict" => 0,
  "subs" => 0,
  "vars" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



