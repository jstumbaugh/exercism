class Prime
  def self.nth(number)
    raise ArgumentError if number == 0
    primes = []
    counter = 2

    while primes.length != number
      if (2..counter).find { |n| counter % n == 0 }
        primes << counter
      end
      counter += 1
    end

    puts "primes: #{primes}"
    primes.last
  end
end

module BookKeeping
  VERSION = 1
end
