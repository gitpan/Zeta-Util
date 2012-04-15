use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Zeta::Util',
    AUTHOR              => q{Gregory S. Youngblood <zeta@cpan.org>},
    VERSION_FROM        => 'lib/Zeta/Util.pm',
    ABSTRACT_FROM       => 'lib/Zeta/Util.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Zeta-Util-*' },
);
