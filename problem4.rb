#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.
#Find the largest palindrome made from the product of two 3-digit numbers.
class String
  def palindrome?
    self == self.reverse
  end
end

#puts "aa".palindrome?

product = [*100..999].product([*100..999])

arr = []

product.each do |p|
  arr << p[0] * p[1]
end

arr.keep_if { |n| n.to_s.palindrome? }
arr.sort!
arr.last
