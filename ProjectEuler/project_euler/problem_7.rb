class Prime
  def initialize
    @primes = [2,3]
  end

  def prime_numbers_below_count_of num
    while @primes.count < num
      @primes << next_prime(@primes.last)
    end
    @primes
  end

  def next_prime last_prime
    prime = 0
    while prime == 0
      last_prime += 2
      prime = last_prime if is_prime? last_prime
    end
    prime
  end

  def largest
    @primes.sort.last
  end

  def is_prime? num
    @primes.each do |p|
      break if p*p > num
      return false if num % p == 0
    end
    true
  end
end