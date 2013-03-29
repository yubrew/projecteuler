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


def abundant_sieve_upto(n)
  s = (0..n).to_a
  s[0..11] = nil
  s.each do |p|
    next unless p
    #break if p * p > n
	if sum(p) > p #abundant
		(p*p).step(n, p) { |m| s[m] = nil }
	else
		s[p] = nil
	end
  end
  s.compact
end

p abundant_sieve_upto(25)
