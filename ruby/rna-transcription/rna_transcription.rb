class Complement
  def self.of_dna(strand)
    return "" if strand.chars.select { |c| !["A", "G", "C", "T"].include?(c) }.any?

    strand.chars.map { |letter| Complement.inverse(letter) }.join
  end

  def self.inverse(type)
    case type
    when "G"
      "C"
    when "C"
      "G"
    when "A"
      "U"
    when "T"
      "A"
    end
  end
end

module BookKeeping
  VERSION = 4
end
