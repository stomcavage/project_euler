#!/usr/bin/perl -w

# Project Euler problem 4:
# 
# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

use strict;

sub isPalindrome {
	my $forward = shift;
	my @digits = split //, $forward;
	my $reverse = join '', reverse @digits;
	return $reverse == $forward;
}

my $answer = 0;

for (my $a = 999; $a >= 100; $a--) {
	for (my $b = 999; $b >= $a; $b-- ) {
		my $c = $a * $b;
		last if $c < $answer;
		$answer = $c if isPalindrome($c);
	}
}

print "$answer\n";
