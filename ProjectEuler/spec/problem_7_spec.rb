$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe Prime do
  it 'should give me the first 6 prime numbers' do
    primes = Prime.new
    primes.prime_numbers_below_count_of(6).should == [2,3,5,7,11,13]
  end

  it 'should give me the largest prime of first 6 prime numbers' do
    primes = Prime.new
    primes.prime_numbers_below_count_of(6)
    primes.largest.should == 13
  end

  it 'should give me the largest prime of first 10001 prime numbers' do
    primes = Prime.new
    primes.prime_numbers_below_count_of(10001)
    primes.largest.should == 104743
  end
end