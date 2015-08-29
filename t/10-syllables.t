#!/usr/bin/env perl
#
use 5.006;
use strict;
use warnings FATAL => 'all';
use utf8;

use Test::More;

use Lingua::NO::Syllable;

my %tests = (
    'Fiolin'        => 3, # Fi-o-lin
    'Helikopter'    => 4, # He-li-kop-ter
    'Idé'           => 2, # I-de (normalized)
    'Idè'           => 2, # I-de (normalized)
    'Løyve'         => 2, # Løy-ve
    'Saumfare'      => 3, # Saum-fa-re
    'Soyabønner'    => 4, # So-ya-bønn-er
    'Tyrannosaurus' => 5, # Tyr-ann-o-sau-rus
    'Veikro'        => 2, # Vei-kro
    'Øy'            => 1, # Øy
);

plan tests => scalar( keys %tests );

foreach ( keys %tests ) {
    is( syllables($_), $tests{$_} );
}

done_testing;
