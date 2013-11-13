numbers = []
(1...1000).each do |n|
  numbers << n if n % 3 == 0 || n % 5 == 0
end

puts numbers.inject(0) { |sum, num| sum + num}

