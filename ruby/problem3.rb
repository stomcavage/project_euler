#!/usr/bin/ruby

# Project Euler Problem 3:
#
# The factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

require 'prime'

class Integer
  def prime_factors
    Prime.each.take_while { |x| x * x < self }.select { |y| (self % y).zero? }
  end
end

puts 600_851_475_143.prime_factors.max
