class Triangle
	def initialize a=0, b=0, c=0
		@a = a
		@b = b
		@c = c
		@sides_total = @a+@b+@c
	end

	def set_all_sides_total total
		@sides_total = total
  end

  def find_pythagorean_triplet_with_sides_totaling total
    set_all_sides_total total
    (1..@sides_total).each do |a|
      (a..@sides_total).each do |b|
        if (a*a)+(b*b) == (@sides_total-a-b)*(@sides_total-a-b)
            @a = a
            @b = b
            @c = @sides_total-a-b
        end
      end
    end
  end

	def all_sides
		[@a,@b,@c]
	end

	def product_all_sides
		@a*@b*@c
	end

	def is_sqrt_whole? num
		sqrt_num = Math.sqrt num
		sqrt_num == sqrt_num.to_i
  end

  def self.first_triangle_number_to_have_minimum_factors_of number
    triangle_number = 0
    divisors = 0
    side = 0
    while divisors < number
      side += 1
      triangle_number = (side*(side+1))/2
      divisors = Triangle.number_of_divisors_for(triangle_number)
    end
    triangle_number
  end

  def self.number_of_divisors_for number
    divisor_number = 0
    for i in (1..(Math.sqrt(number).to_i)) do
      if (number % i) == 0
        divisor_number += 2
      end
    end
    divisor_number
  end
end
