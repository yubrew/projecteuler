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

def are_permutations?(i,j,k)
	i.to_s.split(//).sort == j.to_s.split(//).sort && i.to_s.split(//).sort == k.to_s.split(//).sort
end

primes = sieve_upto(10000)
primes.select!{|n| n.to_s.size == 4 }

primes.each do |i|
	primes.each do |j|
		k = j + j - i
		if k.prime? && k != j && k < 10000
			if are_permutations?(i,j,k)
				solution = [i,j,k].sort.join.to_i
				p solution
				break
			end
		end
    end
end
