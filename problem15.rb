#use central binomial coefficient equation

#20x20 grid

puts (1..(2 * 20)).inject(:*) / ((1..20).inject(:*)**2)
