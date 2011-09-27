class Squares
  def sum_squares range
    total = 0
    range.each do |n|
      total += n*n
    end
    total
  end

  def square_sum range
    sum = 0
    range.each do |n|
      sum += n
    end
    sum*sum
  end

  def diff_sum_squares range
    diff = sum_squares(range)-square_sum(range)
    diff.abs
  end
end