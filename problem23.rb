#real	0m34.667s
#user	0m34.368s
#sys	0m0.086s

require 'prime'

def sum(n)
	def factors_of(number)
		primes, powers = number.prime_division.transpose
		exponents = powers.map{|i| (0..i).to_a}
		divisors = exponents.shift.product(*exponents).map do |powers|
			primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
		end
		divisors.reject { |i| i == number }
	end
	factors_of(n).inject(:+)
end	

#find all abundant numbers, eliminate their multiples up to 28123
#use a similar strategy as finding all primes, by using a sieve, then sum

MAX = 28123
abundant_arr = 2.upto(MAX).select { |i| sum(i) > i }.compact

s = [*0..MAX]

abundant_arr.each do |i|
	abundant_arr.each do |j|
		(i + j).step(MAX, j) { |m| s[m] = nil }
	end
end

p s.compact.inject(:+)
