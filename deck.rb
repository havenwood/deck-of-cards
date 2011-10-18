class Deck
  def initialize
    @cards = []
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suits.each { |suit| ranks.each { |rank| @cards << "#{rank} of #{suit}" } }
  end
  
  def shuffle
    @cards.shuffle!
  end
  
  def draw(num = 1)
    @cards.shift(num)
  end
  
  def cut
    fail "card count is #{@cards.size}, not 52 as expected" unless @cards.size == 52
    @cards.rotate(26)
  end
end

class Array
  include Comparable
  
  def <=> other
    if self.value > other.value
      1
    elsif self.value < other.value
      -1
    else
      0
    end
  end
  
  private
  
  def value
    rank = self.first.split.first
    case rank
    when "Jack"
      11
    when "Queen"
      12
    when "King"
      13
    when "Ace"
      14
    else
      rank.to_i
    end
  end
end