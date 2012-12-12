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
