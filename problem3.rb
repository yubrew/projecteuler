#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?
number=600851475143

def find_largest_prime(n)
  k = 2

  while(k * k <= n)
    if (n % k == 0)
      while(n % k == 0)
        n /= k
      end
    else
      k += 1
    end
  end

  n
end

find_largest_prime(number)
