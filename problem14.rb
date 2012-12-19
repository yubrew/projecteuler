def collatz_sequence(n)
	sequence = 0

	while n != 1
		n = (n % 2 == 0) ? (n / 2) : (3 * n + 1)
		sequence += 1
	end

	sequence + 1
end

sequence = 0
starting_n = 0

(1..999999).each do |n|
	new_sequence = collatz_sequence(n)

	if new_sequence > sequence
		sequence = new_sequence 
		starting_n = n
	end
end

puts sequence
puts starting_n
