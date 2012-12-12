#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10 001st prime number?

def find_primes(n)
	count = 1
	i = 2

	while count <= n
		if prime?(i)
			puts i if count == n
			count += 1 
		end
		i += 1
	end
end

def prime?(n)
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

puts find_primes(10001)
