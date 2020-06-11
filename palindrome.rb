=begin
Largest palindrome product
Problem 4
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

def largest_palindrome(range = 1..999)
  array = []
  range.each do |x|
    range.each do |y|
      array.push(x * y)
    end
  end
  array.select { |n| palindrome?(n) }.max
end
puts largest_palindrome
