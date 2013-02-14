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

def is_truncatable(n)
  if n.to_s.size <= 1 || n.to_s.index(/[4680]/)
    return false
  else
    (1..(n.to_s.size-1)).each do |i|
      return false unless (n.to_s[i..-1].to_i.prime?)
      return false unless (n.to_s[0..(i-1)].to_i.prime?)
    end
  end

  true
end


primes = sieve_upto(1000000)
p primes.count

sum,n = 0,0
while n < 100000
  if primes[n] && is_truncatable(primes[n]) 
    sum += primes[n]
    p "#{primes[n]} is truncatable" 
  end
  n += 1
end
p "#{sum} done"
