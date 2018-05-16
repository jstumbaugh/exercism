class Sieve
  attr_accessor :number, :range

  def initialize(number)
    @number = number
    @range  = (2..number).to_a
  end

  def primes
    (2..number).each do |n|
      remove_for_multiples_of(n)
    end

    range
  end

  def remove_for_multiples_of(n)
    removed = n + n

    while removed <= number
      range.delete(removed)

      removed += n
    end
  end
end

module BookKeeping
  VERSION = 1
end
