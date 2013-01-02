# solved with brute force

#count = 0

#[*0..(200 / 100)].each do |pound|
#  [*0..(200 / 50)].each do |half_pound|
#    [*0..(200 / 20)].each do |twenty|
#      [*0..(200 / 10)].each do |dime|
#        [*0..(200 / 5)].each do |nickel|
#          [*0..(200 / 2)].each do |two_cent|
#            [*0..200].each do |one_cent|
#              if 100 * pound + 50 * half_pound + 20 * twenty + 10 * dime + 5 * nickel + 2 * two_cent + one_cent == 200
#                count += 1 
#                puts [pound, half_pound, twenty, dime, nickel, two_cent, one_cent].inspect
#              end
#            end
#          end
#        end
#      end
#    end
#  end
#end

#puts count + 1

# solved with downcounting

count = 0
200.step(0, -200) { |pound|
  pound.step(0, -100) { |half_pound|
    half_pound.step(0, -50){ |twenty|
      twenty.step(0, -20){ |dime|
        dime.step(0, -10){ |nickel|
          nickel.step(0, -5){ |two_cent| 
            two_cent.step(0, -2){ |one_cent| count += 1}
          }
        }
      }
    }
  }
}

p count
