#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;
use Data::Dumper;

use POSIX qw( strftime );

say strftime("%Y-%m-%dT%H:%M:%S", localtime);

say localtime;
