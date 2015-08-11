#!/usr/bin/perl -w 

# Project Euler Problem 5:
#
# 2520 is the smallest number that can be divided by each of the numbers from 
# 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the 
# numbers from 1 to 20?

use strict;

sub gcd {
	my ($a, $b) = @_;
	while ($b > 0) {
		($a, $b) = ($b, $a % $b);
	}
	return $a;
}

sub lcm {
	my ($a, $b) = @_;
	return ($a * $b) / gcd($a, $b);
}

sub fold {
	my ($funcRef, @argList) = @_;

	my $intermediate = pop @argList;

	foreach (reverse @argList) {
		$intermediate = &$funcRef($intermediate, $_);
	}
	return $intermediate;
}

# Brute-forcing is too slow in Perl. Use some mathematical logic.
my $answer = fold(\&lcm, (1..20));

print "$answer\n";
