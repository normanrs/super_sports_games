# This program will calculate the standard deviation of any array you supply it - integers or floats.

array_in = [24, 30, 18, 20, 41]

def convert_to_float_array(numeric_array)
  numeric_array.map do |x|
    x.to_f
  end
end

def average(numeric_array)
  float_array = convert_to_float_array(numeric_array)
  calc_average = 0.00
  sumtemp = float_array.sum
  elements = float_array.count
  sumtemp/elements
end

def subtract_average(integer_array, avg)
  average_subtracted =[]
  integer_array.each do |x|
    average_subtracted << x - avg
  end
  average_subtracted
end

def square_number(float_array)
  numbers_squared = []
  float_array.each do |num|
    numbers_squared << num ** 2
  end
  numbers_squared
end

def square_root(float)
  squareroot = float ** 0.5
end

# p convert_to_float_array(array_in)
calc_average = average(array_in)

averages_subtracted = subtract_average(array_in, calc_average)

squared = square_number(averages_subtracted)

averaged_squared = average(squared)

standard_deviation = square_root(averaged_squared)

puts "The standard deviation of #{array_in} is #{standard_deviation.round(2)}"
