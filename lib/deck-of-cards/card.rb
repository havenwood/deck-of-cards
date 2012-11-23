Card = Struct.new :rank, :suit do
  include Comparable
  
  def <=> other_card
    self.value <=> other_card.value
  end
  
  def value
    case rank
    when 'Ace'
      14
    when 'King'
      13
    when 'Queen'
      12
    when 'Jack'
      11
    else
      rank
    end
  end
  
  def to_s
    "#{rank} of #{suit}"
  end
end