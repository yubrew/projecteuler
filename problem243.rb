def resilience(n)
	count = 0

	(1..(n - 1)).each do |i|
		count += 1 if n.gcd(i) != 1
	end
	
	(n - count - 1) / (n - 1).to_f
end

RESILIENCE = 15499 / 94744.0

(100000..200000).each do |n|
	if resilience(n) < RESILIENCE 
		puts resilience(n) 
		puts n
		break
	end
end
