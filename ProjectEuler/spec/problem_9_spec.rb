$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe Triangle do
  it 'should give me a and b of the pythagrean theorum for a value of 25 for c' do
    triangle_sides = Triangle.new
    triangle_sides.find_pythagorean_triplet_with_sides_totaling 12
    triangle_sides.all_sides.should == [3,4,5]
  end

  it 'should give me a and b of the pythagrean theorm with a value of 1000 for c' do
    triangle_sides = Triangle.new
    triangle_sides.find_pythagorean_triplet_with_sides_totaling 1000
    triangle_sides.all_sides.should == [200,375,425]
  end

  it 'should give me the product of a, b and c when c is know as 12 and a and b are whole numbers' do
    triangle_sides = Triangle.new
    triangle_sides.find_pythagorean_triplet_with_sides_totaling 12
    triangle_sides.product_all_sides.should == 60
  end

  it 'should give me the product of a, b and c when c is know as 1000 and a and b are whole numbers' do
    triangle_sides = Triangle.new
    triangle_sides.find_pythagorean_triplet_with_sides_totaling 1000
    triangle_sides.product_all_sides.should == 31875000
  end
end
