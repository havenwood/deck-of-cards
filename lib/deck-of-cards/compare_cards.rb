module CompareCards
  include Comparable
  
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
  
  def <=> other_card
    self.value <=> other_card.value
  end
end