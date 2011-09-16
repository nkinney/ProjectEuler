$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe Prime do
	it 'should give me the sum of the prime numbers below 10' do
		primes = Prime.new
		primes.prime_numbers_below 10
		primes.sum_primes.should == 17
	end

	it 'should give me the sun of all the primes below 2000000' do
		primes = Prime.new
		primes.prime_numbers_below 2000000
		primes.sum_primes.should == 142913828922
	end
end
