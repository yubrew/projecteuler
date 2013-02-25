require 'mathn'

RESILIENCE = 15499.0 / 94744

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

primes = sieve_upto(100000)
s = (0..100000).to_a
s[0] = s[1] = nil
s.map! { |i| (i.prime? ? nil : i) if i }

s.each_with_index do |n, index|
  next unless n
  arr = (1..n-1).to_a
  resilient_count = arr.inject{ |count, i| n.gcd(i) == 1 ? count + 1 : count }
  s[index] = resilient_count.to_f / (n - 1)
  #p "index:#{index} resilience_ratio:#{s[index]}" 
  if s[index] < RESILIENCE
    p "yoyoyo index:#{index} s[index]:#{s[index]}" 
    break
  end
end

#def resilience(n)
	#count = 0

	#(1..(n - 1)).each do |i|
		#count += 1 if n.gcd(i) != 1
	#end
	
	#(n - count - 1) / (n - 1).to_f
#end

#RESILIENCE = 15499 / 94744.0

#(100000..200000).each do |n|
	#if resilience(n) < RESILIENCE 
		#puts resilience(n) 
		#puts n
		#break
	#end
#end
