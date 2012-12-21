puts Time.now
require 'mathn'

max_count = 0

Prime.each(998) do |b|
	(-999..999).step(2).each do |a|
		n = 0
		quadratic = 2

		while Prime.prime?(quadratic)
			quadratic = n**2 + a * n + b
			n += 1
		end 

		if n > max_count 
			max_count = n
			@max_product =  a * b
		end
	end
end
p @max_product
puts Time.now
