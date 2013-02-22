#real	0m0.683s
#user	0m0.670s
#sys	0m0.008s

#taken from problem49.rb
def are_permutations?(i,j)
	i.to_s.split(//).sort == j.to_s.split(//).sort
end

class Integer
	def digits
		self.to_s.size
	end
end

(100000..251748).each do |i|
	if i.digits == (i*6).digits
		if are_permutations?(i,i*2) && are_permutations?(i,i*3) && are_permutations?(i,i*4) && are_permutations?(i,i*5) && are_permutations?(i,i*6)
			p "i: #{i} 2i: #{i*2} 3i: #{i*3} 4i: #{i*4} 5i: #{i*5} 6i: #{i*6}"
			break
		end
	end
end
	

