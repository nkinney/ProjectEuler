require 'prime'

class PrimeFactors
	attr_reader :prime_factors

	def initialize num
		@prime_factors = p_factors num
	end

	def p_factors num
		primes = []
		sqrt_num = Math.sqrt(num).to_i
		for i in (1..sqrt_num) do 
			if (num % i) == 0
				primes << i if is_prime? i
			end
		end
		primes
  end

  def is_prime? num
    ('1' * num) !~ /^1?$|^(11+?)\1+$/
  end
  
  def largest
    @prime_factors.sort.last
  end
end
