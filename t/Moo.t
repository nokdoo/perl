#!/usr/bin/env perl

use warnings;
use strict;

use lib '../modules/';
use Test::More;
use Cat::Food;

my $full = Cat::Food->new(
    taste  => 'DELICIOUS.',
    brand  => 'SWEET-TREATZ',
    pounds => 10,
);

$full->feed_lion;

is( $full->pounds, 9, 'Cat::Food' );

done_testing();
