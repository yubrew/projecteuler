# perimeters must be event
require 'pry'
perimeters = [*1..500].map{|x| x * 2}

solution_count = {}
perimeters.each do |p|
	# due to a + b > c, only need to check up to p / 4
	1.upto(p / 4).each do |a|
		# sides must be integers
		next if (p * (p - 2 * a)) % (2 * (p - a)) != 0
		if solution_count[p]
			solution_count[p] += 1
		else
			solution_count[p] = 1
		end
	end
end
p solution_count.values.max
p solution_count.key(solution_count.values.max)
