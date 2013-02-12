require 'mathn'
# took sieve from problem 10

def sieve_upto(n)
  s = (0..n).to_a
  s[0] = s[1] = nil
  s.each do |p|
    next unless p
    break if p * p > n
    (p*p).step(n, p) { |m| s[m] = nil }
  end
  s.compact
end

def rotate(n)
	s = n.to_s
	s = s[1..-1] + s[0]
	s.to_i
end

def is_circular_prime?(n)
	(n.to_s.size - 1).times do
		n = rotate(n)
		unless n.prime?
			return false
		end
	end

	true
end

@primes = sieve_upto(1000000)
circular_primes = []
count = 0
@primes.delete_if{|i| i.to_s.index(/[245680]/) && i.to_s.size > 1 }

@primes.each do |prime|
	
	if prime.to_s.size > 1
		if is_circular_prime?(prime)
			count += 1 
			#circular_primes << prime
		end
	else
		count += 1
		#circular_primes << prime
	end
end

p count
#p circular_primes
