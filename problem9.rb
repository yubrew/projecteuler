#A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

#a^2 + b^2 = c^2
#For example, 32 + 42 = 9 + 16 = 25 = 52.

#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

arr=[]

sequence = [*1..1000]

sequence.each_with_index do |a, i|
	sequence.each do |b|
		if (2000 * a - (2 * a * b) + 2000 * b) == 1000000
			#puts"#{a} #{b}"
			arr << a << b
		end
	end
end

puts arr.uniq!.inspect
c= Math.sqrt(arr[0]**2 + arr[1]**2).to_i

puts arr[0] * arr[1] * c

