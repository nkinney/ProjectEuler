$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe Triangle do
  it 'should give me a and b of the pythagrean theorum for a value of 25 for c' do
    triangle_sides = Triangle.new
    triangle_sides.set_all_sides_total 12
    triangle_sides.solve_for_problem_9
    triangle_sides.all_sides.should == [3,4,5]
  end

  it 'should give me a and b of the pythagrean theorm with a value of 1000 for c' do
    triangle_sides = Triangle.new
    triangle_sides.set_all_sides_total 1000
    triangle_sides.solve_for_problem_9
    triangle_sides.all_sides.should == [200,375,425]
  end

  it 'should give me the product of a, b and c when c is know as 100 and a and b are whole numbers' do
    triangle_sides = Triangle.new
    triangle_sides.set_all_sides_total 1000
    triangle_sides.solve_for_problem_9
    triangle_sides.product_all_sides.should == 31875000
  end
end
