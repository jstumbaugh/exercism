class Bob
  def self.hey(remark)
    if remark.contains_capital_letters? && remark.all_uppercase?
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
    !!(self =~ /.*[A-Z].*/)
  end

  def all_uppercase?
    self == self.upcase
  end

  def ends_with_questionmark?
    !!(self =~ /.*\?\s*$/)
  end

  def nothing?
    self.empty? || !!(self =~ /^\s*$/)
  end
end

# Bob answers 'Sure.' if you ask him a question.

# He answers 'Whoa, chill out!' if you yell at him.

# He says 'Fine. Be that way!' if you address him without actually saying
# anything.

# He answers 'Whatever.' to anything else.

module BookKeeping
  VERSION = 1
end
