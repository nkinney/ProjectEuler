$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

describe Evenly_Divisable do
  it 'should give me the smallest number evenly divisable by 1..10' do
    divisable = Evenly_Divisable.new [1,2,3,4,5,6,7,8,9,10]
    divisable.smallest.should == 2520
  end

  it 'should give me the smallest number evenly divisable by 1..20' do
    divisable = Evenly_Divisable.new [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]
    divisable.smallest.should == 232792560
  end
end