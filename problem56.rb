#real	0m0.718s
#user	0m0.708s
#sys	0m0.008s

max = 1

(1..99).each do |i|
	(1..99).each do |j|
		max = (i**j).to_s.split(//).map(&:to_i).inject(:+) if (i**j).to_s.split(//).map(&:to_i).inject(:+) > max
	end
end
p max
