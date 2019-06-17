#!/usr/bin/env perl

use strict;
use warnings;
use lib './';
use feature qw/ say /;
use DateTime;
use POSIX qw( strftime );

my $mtime = (stat('TimeFormat.pl'))[9];
say $mtime;
say strftime("%Y-%m-%dT%H:%M:%S", localtime($mtime));

say DateTime->now();

__DATA__
2019-02-17T14:00:54
