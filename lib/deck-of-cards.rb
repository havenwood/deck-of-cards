$:.unshift File.expand_path '../../lib/deck-of-cards', __FILE__

require 'card'
require 'version'

class DeckOfCards
  attr_reader :cards
  
  SUITS = %w[Hearts Spades Diamonds Clubs]
  RANKS = [*2..10, 'Jack', 'Queen', 'King', 'Ace']
  
  def initialize
    @cards = []
    SUITS.product(RANKS) { |suit, rank| @cards << Card.new(rank, suit) }
  end
  
  def to_s
    "#{@cards.count}-card deck."
  end

  def shuffle
    @cards.shuffle!
  end
  
  def cut
    @cards.rotate! @cards.count / 2
  end
  
  alias split cut
  
  def draw
    @cards.shift
  end
end