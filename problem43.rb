#real	0m0.377s
#user	0m0.340s
#sys	0m0.035s

def divisible_check(divisor, num)
	arr = []
	0.upto(9) do |i|
		next if num.split(//).include?(i.to_s)
		arr << i.to_s + num if (i.to_s + num.split(//)[0..1].join).to_i % divisor == 0
	end
	arr
end

pandigitals = []
total = []

(17..999).step(17) do |i|
	i = i.to_s
	i = '0' + i if i.size < 3
	next unless i.split(//).uniq.size == i.size
	divisible_check(13, i).each do |j|
		binding.pry if i == 289
		next unless j.split(//).uniq.size == j.size
		divisible_check(11, j).each do |k|
			next unless k.split(//).uniq.size == k.size
			divisible_check(7, k).each do |l|
				next unless l.split(//).uniq.size == l.size
				divisible_check(5, l).each do |m|
					next unless m.split(//).uniq.size == m.size
					divisible_check(3, m).each do |n|
						next unless n.split(//).uniq.size == n.size
						pandigitals << divisible_check(2, n)
					end
				end
			end
		end
	end
end

pandigitals.flatten.uniq.each do |i|
	total << ('0123456789'.split(//) - ('0123456789'.split(//) & i.split(//)))[0] + i
end

p total.map(&:to_i).inject(:+)
