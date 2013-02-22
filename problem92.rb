p Time.now

@sq = Hash[(0..9).map{ |n| [n, n**2] }]

def next_num(n)
  sum = 0
  while n != 0
    sum += @sq[n % 10]
    n /= 10
  end
  sum
end

MAX=10000000
@s = {}
count = 0

(1..567).each do |x|
  curr = x

  while curr != 1 && curr != 89
    curr = next_num(curr)
  end

  count += 1 if curr == 89
  @s[x] ||= (curr == 89)

end

(568..MAX).each do |x|
  count += 1 if @s[next_num(x)]
end

p count

p Time.now
