def factorial(n)
	(1..n).inject(:*) || 1
end

def combinatorics(n, r)
	factorial(n) / (factorial(r) * (factorial(n-r)))
end

count = 0

(1..100).each do |n|
	r = 0
	while r <= n
		if combinatorics(n,r) > 1000000
			count += 1 
			puts combinatorics(n,r)
			puts n
			puts r
		end
		r += 1
	end
end

puts count
