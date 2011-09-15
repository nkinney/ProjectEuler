$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe 'PrimeFactors' do
  it 'should give me the largest prime factor for 13195' do
    prime_factor = PrimeFactors.new 13195
    prime_factor.largest.should == 29
  end

  it 'should give me the largest prime factor for 600851475143' do
    prime_factor = PrimeFactors.new 600851475143
    prime_factor.largest.should == 6857
  end
end