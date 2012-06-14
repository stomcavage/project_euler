#!/usr/bin/ruby

# Project Euler problem 4:
# 
# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

class Integer
	def isPalindrome()
		self.to_s.reverse == self.to_s
	end
end

# Generate an array containing all the possible 3 digit pairs
numPairs = (100..999).to_a.combination(2)

# Now multiply each pair, check if it's a palindrome, and grab the largest
puts numPairs.map{ |a| a[0] * a[1] }.select{ |i| i.isPalindrome }.max
