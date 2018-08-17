require 'pry'
ages = [24, 30, 18, 20, 41]

# Your code here for calculating the standard deviation
# When you find the standard deviation, print it out

def average(ages)
  sumtemp = ages.sum
  elements = ages.count.to_f
  @calc_average = (sumtemp/elements)
end

def subtract_average(ages)
  @average_subtracted = []
  ages.each do |age|
  @average_subtracted << age - @calc_average
  end
  binding.pry
end

def square_number(average_subtracted)
  @number_squared = []
  @average_subtracted.each do |num|
  @number_squared << num ** 2
  end
end

def average_again(number_squared)
  sumtemp = @number_squared.sum
  elements = @number_squared.count.to_f
  @new_average = (sumtemp/elements)
end

def squareroot(new_average)
  @root_squared = @new_average ** 0.5
end
# numbers = [1, 2, 3, 4, 5, 6]
# numbers.each do |number_doubled|
#   number_doubled = number_doubled * 2
#   puts "The number doubled is #{number_doubled}."
# end

average(ages)
subtract_average(ages)
square_number(@average_subtracted)
average_again(@number_squared)
squareroot(@new_average)

print "Standard deviation of #{ages} is #{@root_squared.round(2)}"
puts ""
