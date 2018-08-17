require 'pry'
class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name   = name
    @ages   = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    (@ages.sum/@ages.count.to_f).round(2)
  end

  def standard_deviation_age
    average_subtracted = []
    number_squared = []
    calc_average = (@ages.sum)/(@ages.count.to_f)
    @ages.each do |age|
      average_subtracted << age - calc_average
    end
    average_subtracted.each do |num|
      number_squared << num ** 2
    end
    new_average = (number_squared.sum)/(number_squared.count.to_f)
    (new_average ** 0.5).round(2)
  end
end

event = Event.new("Curling", [24, 30, 18, 20, 41])
puts event
puts event.max_age
puts event.min_age
puts event.average_age
puts event.standard_deviation_age
