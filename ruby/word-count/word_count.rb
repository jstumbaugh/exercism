class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    phrase
      .downcase
      .split(/[^\w']/)
      .select { |str| !str.empty? }
      .map { |str| str.gsub(/^'/, "").gsub(/'$/, "") }
      .group_by { |word| word }
      .map { |key, value| [key, value.length] }
      .to_h
  end
end

module BookKeeping
  VERSION = 1
end
