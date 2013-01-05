# sum of alphabetical index of string
#'ABCD'.bytes.inject(0) { |sum, a| sum + a - 64 }

require 'csv'
names = []
CSV.foreach("names.txt"){|name| names << name}

names.flatten!.sort!

p names.each_with_index.inject(0) {|sum, (name, index)| sum + ((index + 1) * name.bytes.inject(0) { |sum, char_byte| sum + char_byte - 64 })}
