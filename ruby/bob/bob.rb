class Bob
  def self.hey(remark)
    if remark.contains_capital_letters?
      "Whoa, chill out!"
    elsif remark.ends_with_questionmark?
      "Sure."
    elsif remark.nothing?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end

class String
  def contains_capital_letters?
    self == self.upcase && self.upcase != self.downcase
  end

  def ends_with_questionmark?
    self.strip[-1] == "?"
  end

  def nothing?
    self.empty? || !!(self =~ /^(\s)+$/)
  end
end

module BookKeeping
  VERSION = 1
end
