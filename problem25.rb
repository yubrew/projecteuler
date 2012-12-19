@fibonnaci = [0]
last = 1

#loop through fibonnaci numbers until one is over 1000 digits
while @fibonnaci.last < 10**999
  @fibonnaci = (1..last).inject([1]) { |arr, x| x > 1 ? arr << arr[-1] + arr[-2] : arr << 1 }
  last += 1
end

puts @fibonnaci.length
