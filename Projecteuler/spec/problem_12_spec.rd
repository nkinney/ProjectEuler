$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

#The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
#1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
#Let us list the factors of the first seven triangle numbers:
#
#     1: 1
#     3: 1,3
#     6: 1,2,3,6
#    10: 1,2,5,10
#    15: 1,3,5,15
#    21: 1,3,7,21
#    28: 1,2,4,7,14,28
#
#We can see that 28 is the first triangle number to have over five divisors.
#
#What is the value of the first triangle number to have over five hundred divisors?

describe Triangle do
  it 'should know the number of divisors for 3' do
    Triangle.number_of_divisors_for(3).should == 2
  end

  it 'should know the number of divisors for 28' do
    Triangle.number_of_divisors_for(28).should == 6
  end

  it 'should know the smallest triangle number containing 5 factors' do
    Triangle.first_triangle_number_to_have_minimum_factors_of(5).should == 28
  end

  it 'should know the smallest triangle number containing 500 factors' do
    Triangle.first_triangle_number_to_have_minimum_factors_of(500).should == 76576500
  end
end