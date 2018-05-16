class Squares
  attr_accessor :number

  def initialize(num)
    @number = num
  end

  def square_of_sum
    (1..number).reduce(0, :+)**2
  end

  def sum_of_squares
    (1..number).map { |n| n * n }.reduce(0, :+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
