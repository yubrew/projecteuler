#The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
#Find the sum of all the primes below two million.
# TODO use prime sieve for better performance since we know the top boundary

def prime?(n)
	return false if (n % 2 == 0 || n % 3 == 0)
	k=2
	while(k * k <= n)
		if (n % k == 0)
			return false
		else
			k += 1
		end
	end

	return true 
end

primes = [*2..2000000].keep_if {|n| prime?(n) }
puts primes.inject(:+)
