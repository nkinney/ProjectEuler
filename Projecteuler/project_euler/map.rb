class Map
  def initialize map = []
    @map = map
  end

  def largest_inline_product
    x = 0
    y = 0
    l_inline_product = 0
    @map.each do |row|
      row.each do |column|
	if (y+3) < row.count
          right = @map[x][y].to_i*@map[x][y+1].to_i*@map[x][y+2].to_i*@map[x][y+3].to_i
	  l_inline_product = right if right > l_inline_product
	end
        if (x+3) < @map.count
	  down = @map[x][y].to_i*@map[x+1][y].to_i*@map[x+2][y].to_i*@map[x+3][y].to_i
          l_inline_product = down if down > l_inline_product
	end
        if (y+3) < row.count and (x+3) < @map.count
	  angle = @map[x][y].to_i*@map[x+1][y+1].to_i*@map[x+2][y+2].to_i*@map[x+3][y+3].to_i
	  l_inline_product = angle if angle > l_inline_product
	end
	if (y+3) < row.count and (x+3) >= 3
	  left_angle = @map[x][y].to_i*@map[x-1][y+1].to_i*@map[x-2][y+2].to_i*@map[x-3][y+3].to_i
	  l_inline_product = left_angle if left_angle > l_inline_product
	end
	y += 1
      end
      y = 0
      x += 1
    end
    l_inline_product
  end

  def sum_of_5_consecutive_chars string_of_digits
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
