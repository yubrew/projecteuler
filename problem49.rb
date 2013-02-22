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

def is_permutation_prime?(n)
  count = 0
  unless n.to_s.index(/0/)
    n.to_s.split(//).permutation.each do |arr|
      if arr.join.to_i.prime? && (arr.join.to_f / 1000 >= 1)
        #p number.join.to_i
        p count
        count += 1
        return true if count == 3
      end
    end
  end

  false
end

primes = sieve_upto(10000)
primes.select!{|n| n.to_s.size == 4 }

primes.each do |prime|
  if is_permutation_prime?(prime)
    #p prime
  end
end
