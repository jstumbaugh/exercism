class Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length

    distance = 0

    str1.chars.each_with_index do |letter, index|
      distance += 1 if letter != str2[index]
    end

    distance
  end
end

module BookKeeping
  VERSION = 3
end
