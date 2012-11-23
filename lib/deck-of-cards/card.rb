class Card  
  attr_reader :rank, :suit
  
  def initialize rank, suit
    @rank, @suit = rank, suit
  end
  
  def inspect
    "#<#{@rank} of #{@suit}>"
  end
  
  def to_s
    "#{@rank} of #{@suit}"
  end
  
  include Comparable
  
  def <=> other_card
    self.value <=> other_card.value
  end
  
  def value
    case @rank
    when 'Ace'
      14
    when 'King'
      13
    when 'Queen'
      12
    when 'Jack'
      11
    else
      @rank
    end
  end
end