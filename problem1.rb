# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

MAX = 999

def find_sum(i, multiple)
  (1..i).inject(0) {|sum,n| sum + (multiple * n) }
end

total_sum = find_sum( MAX / 3, 3) + find_sum( MAX / 5, 5) - find_sum( MAX / 15, 15 )

puts total_sum
