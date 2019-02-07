#!/usr/bin/env perl

use strict;
use warnings;
use GD;
use GD::Text::Align;

my $gd = GD::Image->new(800,600);
# allocate colours, do other things.

my $align = GD::Text::Align->new($gd,
  valign => 'top',
  halign => 'right',
);
$align->set_font('arial', 12);
$align->set_text('some string');
my @bb = $align->bounding_box(200, 400, 3);
# you can do things based on the bounding box here
$align->draw(200, 400, 3);
