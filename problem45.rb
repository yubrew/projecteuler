#real	0m0.154s
#user	0m0.143s
#sys	0m0.007s

def hexagonal_numbers(n)
  (Array.new(n+1) {|i| i*(2*i-1)}).drop(1)
end

def triangle_number?(n)
  test = Math.sqrt(8 * n + 1)
  test == test.to_i && test % 2 == 1
end

def pentagonal_number?(n)
  test = (Math.sqrt(24 * n + 1) + 1) / 6
  test == test.to_i
end

p hexagonal_numbers(50000).select {|i| triangle_number?(i) && pentagonal_number?(i)}.first(4).last
