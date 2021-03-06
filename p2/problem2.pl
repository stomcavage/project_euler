#!/usr/bin/perl -w

# Project Euler Problem 2:
# 
# Each new term in the Fibonacci sequence is generated by adding the previous 
# two terms. By starting with 1 and 2, the first 10 terms will be:
# 
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#
# By considering the terms in the Fibonacci sequence whose values do not 
# exceed four million, find the sum of the even-valued terms.

use strict;

my @pair = (1,2);
my $total = 0;

while ($pair[1] < 4000000) {
	$total += $pair[1] if $pair[1] % 2 == 0;
	@pair = ($pair[1], $pair[0] + $pair[1]);
}

print "$total\n";
