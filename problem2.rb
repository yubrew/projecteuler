@fibonnaci = [0]
last = 1

#loop through fibonnaci numbers until one is over 8,000,000
while @fibonnaci.last < 8000000
  @fibonnaci = (1..last).inject([1]) { |arr, x| x > 1 ? arr << arr[-1] + arr[-2] : arr << 1 }
  last += 1
end

@fibonnaci.pop #pop last value over 8,000,000

total_sum = @fibonnaci.select{ |n| n % 2 == 0 }.inject(:+)
