# real	0m0.023s
#user	0m0.016s
#sys	0m0.006s

# http://en.wikipedia.org/wiki/Cyclic_number#Form_of_cyclic_numbers

# find the biggest cyclic number under 1000

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

primes = sieve_upto(1000).reverse

catch :done do
	primes.each do |prime|
		b = 10
		t = 0
		r = 1
		n = 0
		while r != 1 || t == 0
			t += 1
			x = r * b
			d = (x / prime).to_i
			r = x % prime
			n = n * b + d
			if t > prime / 2 + 1
				p "#{prime} is cyclic"
				throw :done
			end
		end
	end
end
