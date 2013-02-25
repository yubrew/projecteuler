# real	0m1.286s
# user	0m1.255s
# sys	0m0.021s
#from problem 4

class String
  def palindrome?
    self == self.reverse
  end
end

solution = [*1..999999].keep_if { |x| x.to_s.palindrome? && x.to_s(2).palindrome? }

p solution.inject(:+)
