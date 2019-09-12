#!/usr/bin/env perl
# Demonstration of sleeping for a fraction of a second using Time::HiRes.


use strict;
use warnings;
use feature qw(say);

use Time::HiRes qw(sleep time);

my @t;

push(@t, time), sleep 0.25 for 1..4;

say $t[0];

say sprintf "%-16s - %-16s = %s", @t[$_, $_-1], $t[$_] - $t[$_-1]
   for 1..3;

