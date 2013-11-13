# Project Euler Problem 2
# https://projecteuler.net/problem=2

# Function to use a hash to make and store a Fibonacci sequence, credit below
fib = Hash.new do |hash,key|
  k = key.to_i
  hash[key] = case k
    when 0 then 0
    when 1 then 1
    else hash[k-1] + hash[k-2]
  end
end

# Initialize: array, counter
maths = []
i = 0
# Checking and storing evens and incrementing
while fib[i] < 4000000
  maths << fib[i] if fib[i] % 2 == 0
  i += 1
end
# Adding the array of evens
answer = maths.inject(0) { |sum, num| sum + num }
puts answer

#YES, the internet seriously rules: http://gabebw.wordpress.com/2010/11/01/stupid-ruby-trick-using-a-hash-to-generate-the-fibonacci-sequence/  <-- the fib function
