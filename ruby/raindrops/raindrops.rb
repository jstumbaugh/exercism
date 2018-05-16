class Raindrops
  def self.convert(number)
    translated = translate factors_of number

    if translated.empty?
      number.to_s
    else
      translated
    end
  end

  def self.factors_of(number)
    (1..number).select { |n| number % n == 0 }
  end

  def self.translate(numbers)
    numbers.map do |num|
      case num
      when 3
        "Pling"
      when 5
        "Plang"
      when 7
        "Plong"
      end
    end.join
  end
end

module BookKeeping
  VERSION = 3
end
