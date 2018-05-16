class RunLengthEncoding
  def self.encode(input)
    return "" if input.empty?

    encoded = []

    input.chars.each do |char|
      if encoded.last.nil? || encoded.last[1] != char
        encoded << [1, char]
      elsif encoded.last[1] == char
        encoded.last[0] += 1
      end
    end

    encoded.map do |array|
      if array[0] > 1
        "#{array[0]}#{array[1]}"
      else
        array[1]
      end
    end.join
  end

  def self.decode(input)
    return "" if input.empty?

    decoded = []

    input.chars.each_cons(2) do |first, second|
      if first =~ /\d/ && second =~ /[A-Za-z]{1}/ # "2A"
        first.to_i.times { decoded << second }
      elsif first =~ /[A-Za-z]{1}/ && !(second =~ /\d/) # "A2"
        decoded << first
      elsif decoded.last == first && input.chars.last == second
        decoded << second
      end
    end

    decoded.join
  end
end

module BookKeeping
  VERSION = 3
end
