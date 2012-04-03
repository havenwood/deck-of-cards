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
    if shuffled?
      fail "card count is #{@cards.size}, not 52 as expected" unless @cards.size == 52
      @cards.rotate! rand(20..32)
      @cut ||= true
      @dealer_just = :cut
    else
      fail "must shuffle before a cut"
    end
  end
  
  def cut?
    @cut
  end
  
  def draw(num = 1)
    if cut? && @dealer_just == :cut
      @cards.shift(num)
      @dealer_just = :drew
    else
      fail "must cut before a draw"
    end
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