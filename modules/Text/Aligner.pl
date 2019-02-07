#!/usr/bin/env perl

use warnings;
use strict;

use Text::Aligner qw( align );

# Print the words "just a test!" right-justified each on a line:

print "asdasdasdasdasdasdasdasdasdasdasdad\n";
my @lines = align( 'right', qw( ddddddddddjust a test!) );
print "$_\n" for @lines;

