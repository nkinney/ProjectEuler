$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'spec_helper'

describe Palindromes do
  it 'should give me the largest palindrome from a 2 digit product' do
    l_pal = Palindromes.new 2
    l_pal.calculate_palindromes
    l_pal.largest_palindrome.should == 9009
  end

  it 'should give me the largest palindrome from a 3 digit product' do
    l_pal = Palindromes.new 3
    l_pal.calculate_palindromes
    l_pal.largest_palindrome.should == 906609
  end
end