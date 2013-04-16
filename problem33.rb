# digit canceling fractions
require 'prime'
require 'pry'

def common_digit?(a, b)
  (a.to_s.split(//) & b.to_s.split(//)).join.send(:to_i)
end

def digit_canceled_fraction?(a, b)
	if (d = common_digit?(a,b)) != 0
		if a.to_s.gsub(/d/,'').to_i == 0 || b.to_s.gsub(/d/,'').to_i == 0
			nil #'both digits are the same'
		else
			a.to_f / b == a.to_s.gsub(/#{d}/,'').to_f / b.to_s.gsub(/#{d}/,'').to_f
		end
	else
		nil #'no common digit'
	end
end

def common_denominator(a, b)
	c = []
	d = 1
	a_primes, a_powers = a.prime_division.transpose
	b_primes, b_powers = b.prime_division.transpose
	b_primes.each_with_index do |x, i|
		if [x] & a_primes != []
			c[i] = b_powers[i] - a_powers[a_primes.index(x)]
		else
			c[i] = b_powers[i]
		end

		d = d * x**c[i]
	end

	d
end
# tests
#p common_digit?(1,2)
#p common_digit?(12,23)
#p common_digit?(12,28)
#p common_digit?(10,20)
#p common_digit?(99,19)
#p common_digit?(13,32)
#p common_digit?(49,98)
#p 'digit canceled fraction?'
#p digit_canceled_fraction?(1,2)
#p digit_canceled_fraction?(12,23)
#p digit_canceled_fraction?(12,28)
#p digit_canceled_fraction?(49,98)

dc_fractions = {}
1.upto(99).each do |i|
	1.upto(i).each do |j|
		dc_fractions[j] = i if digit_canceled_fraction?(j, i)
	end
end

numerator = dc_fractions.keys.inject(:*)
denominator = dc_fractions.values.inject(:*)
p common_denominator(numerator, denominator)
