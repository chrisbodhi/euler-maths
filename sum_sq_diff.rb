#Project Euler.net Problem 6

#Squares each number, puts it in an array

squared_arr = []
(1..100).each do |n|
  squared_arr << (n**2)
end

#Sums all of the numbers in the array, stores that sum
sum_of = squared_arr.inject { |sum, num| sum + num }

#Makes an array of 1 through 100
summer = []
(1..100).each do |n|
  summer << n
end

#Adds 1 through 100, then squares them
squaring = (summer.inject { |sum, num| sum + num}) ** 2

#Subtracts to get the answer
squaring - sum_of
