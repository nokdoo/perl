#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;
use Data::Dumper;

use DateTime::Format::Strptime;

my $strp = DateTime::Format::Strptime->new(
    pattern   => '%Y-%m-%dT%TZ', # 2016-11-04||T||18:36:50||Z
    locale    => 'en_AU',
    time_zone => 'Australia/Melbourne',
);
my $dt = $strp->parse_datetime("2016-11-04T18:36:50Z");

say Dumper $dt->stringify();
