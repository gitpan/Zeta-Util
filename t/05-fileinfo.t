use Test::More;

BEGIN {
	use strict;
	use warnings;
	use Carp;
    use_ok( 'Zeta::Util', ':FILE' ) || BAIL_OUT('Failed to use Zeta::Util with :FILE');
}

my $expected = {
    'filetype'       => 'file',
	'mode'           => '0664',
	'size'           => 600,
	'file_name'      => '05-fileinfo',
	'mode_dec'       => 436,
	'file_extension' => 't',
	'filename'       => '05-fileinfo.t',
	'rdev'           => 0,
};

my $fileinfo = get_file_details($0);

foreach my $key (sort keys %{$expected}) {
	is($fileinfo->{$key}, $expected->{$key}, sprintf("%s ok", $key));
}

# We're done here!
done_testing();

