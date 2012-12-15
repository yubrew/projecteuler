arr = [*1..1000]
arr.map!{|n| n**n}
puts arr.inject(:+).to_s.split(//).last(10).inspect
