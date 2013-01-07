require 'prime'

def factors_of(number)
  primes, powers = number.prime_division.transpose
  exponents = powers.map{|i| (0..i).to_a}
  divisors = exponents.shift.product(*exponents).map do |powers|
    primes.zip(powers).map{|prime, power| prime ** power}.inject(:*)
  end
  divisors.sort.map{|div| [div, number / div]}
end

def is_amicable?(number)
  unless number.prime?
    divisors = factors_of(number).flatten.inject(:+) / 2 - number
    (number == (factors_of(divisors).flatten.inject(:+) / 2 - divisors)) && (number != divisors)
  end
end

sum = 0
[*100..10000].each do |number|
  if is_amicable?(number)
    (sum += number) 
    puts number
  end
end

puts sum
