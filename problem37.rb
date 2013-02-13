require 'mathn'

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

def is_truncatable_prime(n)
	if n.to_s.size <= 1
		return false
	end
	(n.to_s.size-1).times do |i|
		p n
		return false unless (n / (10 ** i)).to_i.prime? 
		return false unless (n.to_s)[i..-1].to_i.prime?
	end

	true
end
primes = sieve_upto(4000)
primes.delete_if{|i| i.to_s.index(/[245680]/) && i.to_s.size > 1 }

primes.each do |prime|
	p "#{prime} is truncatable prime" if is_truncatable_prime(prime)
end
