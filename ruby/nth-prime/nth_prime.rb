class Prime
  def self.nth(number)
    raise ArgumentError if number == 0

    candidate = 0
    primes = []
    while primes.length < number
      if candidate.prime?
        primes << candidate
      end

      candidate += 1
    end

    primes.last
  end
end

class Integer
  def prime?
    if self <= 1
      return false
    end

    index = 2
    while index < self
      if self % index == 0
        return false
      end

      index += 1
    end

    true
  end
end

module BookKeeping
  VERSION = 1
end
