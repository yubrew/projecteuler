require 'date'

#get the wday of the first of each month from 1 jan 1901 to 31 dec 2000

@first_of_month_for_time_interval = []

(1901..2000).each do |y|
  (1..12).each do |m|
    @first_of_month_for_time_interval << Date.new(y,m,1).wday
  end
end
p @first_of_month_for_time_interval.count(6)
