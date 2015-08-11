#!/usr/bin/perl -w
#
# Project Euler Problem 3:
#  
# The factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

use strict;

my $n = 600851475143;
my $maxPrime = 1;

# First handle the case where n is divisible by 2
while ($n % 2 == 0) {
	$maxPrime = 2;
	$n /= 2 
}

# Now check divisiblity by odds from 3 on up
my $factor = 3;
while ($n > 1) {
	while ($n % $factor == 0) {
		$maxPrime = $factor;
		$n /= $factor 
	}
	$factor += 1;
}	

print "$maxPrime\n";
