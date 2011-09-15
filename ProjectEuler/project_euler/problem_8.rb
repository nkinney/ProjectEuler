class Problem_8
  def self.sum_of_5_consecutive_chars string_of_digits
    count = 0
    total = 0
    while count < string_of_digits.size do
      t = 0
      if count < string_of_digits.size-5
        t = string_of_digits[count].to_i*string_of_digits[count+1].to_i*string_of_digits[count+2].to_i*string_of_digits[count+3].to_i*string_of_digits[count+4].to_i
      end
      total = t if t > total
      count +=1
    end
    total
  end
end