#295245 = 5 * 9^5
num = 0 
[*1..295245].each do |x|
  puts x if x == x.to_s.split(//).map(&:to_i).inject(0) {|sum, n| sum + n**5}
end

