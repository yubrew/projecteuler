#real	0m0.046s
#user	0m0.037s
#sys	0m0.007s

@ones = ['one','two','three','four','five','six','seven','eight','nine']
@tens = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
@teens = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

def numbers_to_words(n)
	return 'zero' if n == 0

	num_string = ''
	remaining = n
	write = remaining / 100
	remaining = remaining - write * 100

	if write == 10
		return 'one thousand'
	elsif write > 0
		num_string = num_string + numbers_to_words(write) + ' hundred'

		num_string += ' and ' if remaining > 0
	end

	write = remaining / 10
	remaining = remaining - write * 10	

	if write > 0
		if write == 1 && remaining > 0
			num_string += @teens[remaining-1]
			remaining = 0
		else
			num_string += @tens[write-1]
		end

		num_string += ' ' if remaining > 0
	end

	write = remaining
	remaining = 0

	num_string += @ones[write-1] if write > 0

	num_string
end

def letter_count(n)
	(1..n).inject(0){|sum,x| sum + numbers_to_words(x).gsub(/\s+/, "").size}
end

#p numbers_to_words(342)
#p numbers_to_words(342).gsub(/\s+/, "")
#p numbers_to_words(342).gsub(/\s+/, "").size
#p numbers_to_words(115).gsub(/\s+/, "").size
#p letter_count(5)
p letter_count(1000)
