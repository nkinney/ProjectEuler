class Evenly_Divisable
  def initialize nums
    @nums = nums.reverse
  end

  def smallest
    base_num = @nums[0]
    @nums.delete_at 0
    divisable_num = base_num
    while !all_nums_divide? divisable_num
      divisable_num += base_num
    end
    "Smallest number divisable by all is #{@smallest_divisable}"
    @smallest_divisable
  end

  def all_nums_divide? num
    all_good = true
    @nums.each do |n|
      if (num%n) != 0
        all_good = false
        break
      end
    end
    @smallest_divisable = num if all_good
    all_good
  end
end