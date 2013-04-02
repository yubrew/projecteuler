# get primes up to 10 digit numbers, pandigital 10-digit numbers, and find their intersect

require 'prime'

@prime_found = false
def pandigital_prime(n)
	[*'1'.."#{n}"].reverse.permutation.map(&:join).each do |i|
		if i.to_i.prime?
			p i
			@prime_found = true
			break
		end
	end
	pandigital_prime(n-1) unless @prime_found
end

pandigital_prime(9)
