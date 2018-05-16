class Pangram
  def self.pangram?(phrase)
    ("a".."z").all? { |letter| phrase.downcase.include?(letter) }
  end
end

module BookKeeping
  VERSION = 6
end
