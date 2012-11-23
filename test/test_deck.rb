#!/usr/bin/env ruby
$:.unshift File.expand_path '../../lib/deck-of-cards', __FILE__

require 'minitest/autorun'
require 'minitest/pride'
require 'set'
require File.expand_path '../../lib/deck-of-cards.rb', __FILE__

describe DeckOfCards do
  before do
    @deck = DeckOfCards.new
    @correct_cards = []
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suits.each do |suit| 
      ranks.each do |rank|
        @correct_cards << Card.new(rank, suit)
      end
    end
  end
  
  describe "when a deck is created" do
    it "must have 52 cards" do
      @deck.cards.count.must_equal 52
    end
    
    it "must have the correct cards" do
      @deck.cards.map(&:to_s).to_set.must_equal @correct_cards.map(&:to_s).to_set
    end
  end
  
  describe "when a deck is shuffled" do
    before do
      @deck.shuffle
    end
    
    it "wont be in the same order" do
      @deck.cards.map(&:to_s).wont_equal @correct_cards
    end
  end
  
  describe "when a deck is cut" do
    before do
      @deck.cut
    end
    
    it "must be cut in half" do
      @deck.cards.first.to_s.must_equal @correct_cards[26].to_s
      @deck.cards.last.to_s.must_equal @correct_cards[25].to_s
    end
  end
  
  describe "when a card is drawn" do
    before do
      @card = @deck.draw
    end
    
    it "must be a real card" do
      @correct_cards.map(&:to_s).must_include @card.to_s
    end
    
    it "must reduce the deck size by one" do
      @deck.cards.size.must_equal 51
    end
  end
end