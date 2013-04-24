# 12 * 345 is the smallest product since product of two 2-digit numbers only results in 4 digits, and a total 9 digits is required.
# for 1 digit * 4 digit = 4 digit, 2 * 4938 = 9876.
require 'pry'
products = []

(12..99).each do |i|
	(100..987).each do |j|
		#binding.pry if i * j == 72154
		next unless (i.to_s + j.to_s).split(//).count == (i.to_s + j.to_s).split(//).uniq.count
		next if i.to_s.split(//).include?('0') || j.to_s.split(//).include?('0')
		products << (i * j) if (i * j).to_s.split(//).sort.join == '123456789'.gsub(/[#{i.to_s}#{j.to_s}]/,'')
	end
end

(1..9).each do |i|
	(1000..9876).each do |j|
		next unless (i.to_s + j.to_s).split(//).count == (i.to_s + j.to_s).split(//).uniq.count
		next if i.to_s.split(//).include?('0') || j.to_s.split(//).include?('0')
		products << (i * j) if (i * j).to_s.split(//).sort.join == '123456789'.gsub(/[#{i.to_s}#{j.to_s}]/,'')
	end
end

p products.uniq!.inject(:+)
p products
