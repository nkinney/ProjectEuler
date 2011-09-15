$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

describe Squares do
  it 'should give me the sum of the squares in a range of 1..10' do
    squares = Squares.new
    squares.sum_squares(1..10).should == 385
  end

  it 'should give me the square of the sum in a range of 1..10' do
    squares = Squares.new
    squares.square_sum(1..10).should == 3025
  end

  it 'should give me the difference sum of the squares and the squares of the sum for a range of 1..10' do
    squares = Squares.new
    squares.diff_sum_squares(1..10).should == 2640
  end

  it 'should give me the difference sum of the squares and the squares of the sum for a range of 1..100' do
    squares = Squares.new
    squares.diff_sum_squares(1..100).should == 25164150
  end
end