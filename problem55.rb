class String
  def palindrome?
    self == self.reverse
  end
end

def reverse_and_add(n)
	n + n.to_s.reverse.to_i
end

def lychrel_check(n)
	k = n

	50.times do
		k = reverse_and_add(k)
		if k.to_s.palindrome?
			return false 
		end
	end

	return true
end

count = 0
(50..10000).each do |n|
	count += 1 if lychrel_check(n)
end

puts count
