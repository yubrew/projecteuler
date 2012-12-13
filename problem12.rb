# What is the value of the first triangle number to have over five hundred divisors?

require 'prime'

def triangle_numbers(n)
   (Array.new(n+1) {|i| i*(i+1)/2 }).drop(1)
end

numbers = triangle_numbers(15000)
numbers.each do |number|
  primes, powers = number.prime_division.transpose
  # number of divisors related to powers http://mathforum.org/library/drmath/view/55843.html
  if powers && powers.map{|n|n+1}.inject(:*) > 500
    puts number 
    break
  end
end
