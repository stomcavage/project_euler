#!/usr/bin/perl -w

use strict;
use Math::Prime::Util  'nth_prime';

my $prime = nth_prime(10_001);
print "$prime\n";
