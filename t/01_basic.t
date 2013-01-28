# vim: set expandtab ts=4 sw=4 nowrap ft=perl ff=unix :
use strict;
use warnings;
use Test::More;
use Algorithm::BinPack::2D;

my $packer = Algorithm::BinPack::2D->new(
    binwidth => 500,
    binheight => 400,
);

$packer->add_item(label => 'one', width => 300, height => 100);
$packer->add_item(label => 'two', width => 200, height => 100);
$packer->add_item(label => 'three', width => 100, height => 200);
$packer->add_item(label => 'four', width => 100, height => 200);
$packer->add_item(label => 'five', width => 200, height => 100);
$packer->add_item(label => 'six', width => 300, height => 300);

subtest 'Basic algorithm' => sub {
    my @a = $packer->pack_bins;
    use Data::Dumper;
    print STDERR Dumper(\@a);
};

done_testing;
