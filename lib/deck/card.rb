class Card
  include CompareCards
  
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
end
