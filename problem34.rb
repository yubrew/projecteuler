def factorial(n)
	(1..n).inject(:*) || 1
end
max = 7 * factorial(9)

sum = 0
(10..max).each do |n|
	if n == n.to_s.chars.map { |i| factorial(i.to_i) }.inject(:+) 
		puts n
		sum += n
	end
end

puts sum
