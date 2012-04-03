class Deck
  attr_reader :cards
  
  def initialize
    @shuffled = false
    @cut = false
    @cards = []
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suits.each { |suit| ranks.each { |rank| @cards << "#{rank} of #{suit}" } }
  end

  def shuffle
    @cards.shuffle!
    @shuffled ||= true
    @dealer_just = :shuffled
  end
  
  def shuffled?
    @shuffled
  end
  
  def cut
    @cards.rotate!(@cards.count / 2)
    @cut ||= true
    @dealer_just = :cut
  end
  
  def cut?
    @cut
  end
  
  def draw
    card_drawn = @cards.shift
    @dealer_just = :drew
    card_drawn
  end
end

class Array
  include Comparable
  
  def <=> other
    self.value <=> other.value
  end

  def value
    rank = self.first.split.first
    case rank
    when "Ace"
      14
    when "King"
      13
    when "Queen"
      12
    when "Jack"
      11
    else
      rank.to_i
    end
  end
end