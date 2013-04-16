# digit canceling fractions

def common_digit?(a, b)
  (a.to_s.split(//) & b.to_s.split(//)).join.send(:to_i)
end

p common_digit?(1,2)
p common_digit?(10,20)
p common_digit?(99,19)
p common_digit?(13,32)
p common_digit?(49,98)
