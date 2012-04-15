#!perl

use Test::More tests => 1;

BEGIN {
    use_ok( 'Zeta::Util') || BAIL_OUT('Failed to use Zeta::Util');
}

diag( "Testing Zeta::Util $Zeta::Util::VERSION, Perl $], $^X" );
