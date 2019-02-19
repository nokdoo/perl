#!/usr/bin/env perl

use strict;
use warnings;
use lib './';
use DateTime;
use POSIX qw( strftime );

my $mtime = (stat('test.pl'))[9];
print $mtime."\n";
print strftime("%Y-%m-%dT%H:%M:%S", localtime($mtime))."\n";

print DateTime->now();

__DATA__
2019-02-17T14:00:54
