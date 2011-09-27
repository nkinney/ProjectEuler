class Fibinachi
  def all_fibonacci_numbers max_value_to_be_under
    var1 = 0
    var2 = 1
    fibonacci_numbers = []
    while var2 < max_value_to_be_under do
      temp = var1 + var2
      var1 = var2
      var2 = temp
      fibonacci_numbers << var2 if var2 < max_value_to_be_under
    end
    fibonacci_numbers
  end

  def all_even_fibonacci_numbers max_value_to_be_under
    fibonacci_numbers = all_fibonacci_numbers max_value_to_be_under
    even_fibonacci_numbers = []
    fibonacci_numbers.each do |number|
      even_fibonacci_numbers << number if (number % 2) == 0
    end
    even_fibonacci_numbers
  end

  def total_all_even_fibonacci_numbers max_value_to_be_under
    even_fibonacci_numbers = all_even_fibonacci_numbers max_value_to_be_under
    total = 0
    even_fibonacci_numbers.each do |number|
      total += number
    end
    total
  end
end
