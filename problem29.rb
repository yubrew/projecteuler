arr = []
(2..100).each do |a|
  (2..100).each do |b|
    arr << a**b
  end
end

puts arr.uniq!.length
