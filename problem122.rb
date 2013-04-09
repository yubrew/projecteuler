require 'pry'

def digital_root(n)
  sum = 0
  while n != 0
    sum += n % 10
    n /= 10
  end
  sum = digital_root(sum) unless sum / 10 == 0

  sum
end

p digital_root(31337)
