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

	def solve_for_problem_9
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
end
