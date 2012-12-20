require 'CSV'

numbers = []

CSV.foreach("base_exp.txt") do |row|
	numbers << row
end

max_number = 0
max_i = 0
numbers = numbers.map { |n| [n[0].to_i, n[1].to_i] }
numbers.each_with_index do |number, i|
	if number[1] * Math.log10(number[0]) > max_number
		max_number = number[1] * Math.log10(number[0])
		max_i = i
	end
end

puts max_i + 1
puts max_number
puts "#{numbers[max_i][0]} #{numbers[max_i][1]}"
