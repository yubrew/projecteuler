def triangle_numbers(n)
   (Array.new(n+1) {|i| i*(i+1)/2 }).drop(1)
end


words = Array.new
f = File.open("words.txt", "r")
f.each_line do |line|
	words << line.gsub("\"", '').split(/,/)
end

words.flatten!

numbers = triangle_numbers(100)

count = 0
words.each do |word|
	sum = word.chars.inject(0){ |r, c| r + (c.ord - 'A'.ord + 1) }
	count += 1 if numbers.include?(sum)
end

puts count
