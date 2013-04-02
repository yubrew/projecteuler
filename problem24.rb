# real	0m0.038s
#user	0m0.029s
#sys	0m0.007s
# to find the specific lexicographic permutation, i can look at permutation numbers to find the fixed order of each digit.
# e.g. if you're looking for a permutation less than 9!, then it will start out 0*********

def lex_permutation(arr, n)
	if arr.size == 1
		arr.first.to_s
	else
		index = n / factorial(arr.size-1)
		arr[index].to_s + lex_permutation(arr.select{|i| i != arr[index]}, n - index * factorial(arr.size-1))
	end
end

def factorial(n)
	(1..n).inject(:*)
end

#(0..5).each { |x| p lex_permutation([*0..9], x) }
p lex_permutation([*0..9], 999999)
