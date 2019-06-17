#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature qw/ say /;

use HTTP::Tiny;

my $response = HTTP::Tiny->new->get('http://www.blogvillain.com:3000/');
die "Failed!\n" unless $response->{success};
 
my $response_type = 'code';
my $client_id = 'B4eKBlrEYU5z25BKMXEH';
my $redirect_uri = '';
my $state;
print "$response->{status} $response->{reason}\n";
 
while (my ($k, $v) = each %{$response->{headers}}) {
    for (ref $v eq 'ARRAY' ? @$v : $v) {
        print "$k: $_\n";
    }
}
 
print $response->{content} if length $response->{content};
