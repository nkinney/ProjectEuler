class Palindromes
	def initialize num
		@pals = []
		@start_num = set_start_num num
		@end_num = set_end_num num
	end

	def set_start_num num
		n = '1'
		(num-1).times do
			n += '0'
		end
		n.to_i
	end

	def set_end_num num
		n = ''
		num.times do
			n += '9'
		end
		n.to_i
	end

	def calculate_palindromes
		range = @start_num..@end_num
		range.each do |outer_num|
			range.each do |inner_num|
				outer_inner_product = outer_num*inner_num
				if is_pal? outer_inner_product
					@pals << outer_inner_product
				end
			end
		end
	end

	def is_pal? num
		num.to_s == num.to_s.reverse
	end

	def largest_palindrome
		@pals.sort.last
	end
end