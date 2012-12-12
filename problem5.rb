#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'

sequence = [*1..20]
final_primes=[]
final_powers=[]
final_product=1

sequence.each do |n|
	next if n.prime_division.transpose.empty?

	primes, powers = n.prime_division.transpose

	primes.each_with_index do |p,i|
		if final_primes.include? p
			final_powers[final_primes.index(p)] = powers[i] if powers[i] > final_powers[final_primes.index(p)]
		else
			final_primes << p
			final_powers << powers[i]
		end
	end
end

puts final_primes.inspect
puts final_powers.inspect

final_primes.each_with_index do |p,i|
	final_product *= p**(final_powers[i])
end

puts final_product
