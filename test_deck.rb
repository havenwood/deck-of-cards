#!/usr/bin/env ruby

begin
  require 'minitest/autorun'
rescue LoadError
  require 'rubygems'
  require 'minitest/autorun'
ensure
  require 'minitest/pride'
  require 'set'
  require './deck'
end

describe Deck do
  before do
    @deck = Deck.new
    @unshuffled_cards = @deck
    @correct_cards = []
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suits.each { |suit| ranks.each { |rank| @correct_cards << "#{rank} of #{suit}" } }
  end
  
  describe "when a deck is created" do
    it "must be a deck of cards" do
      @deck.must_be_instance_of Deck
    end
    
    it "must have 52 cards" do
      @deck.cards.count.must_equal 52
    end
    
    it "must have the correct cards" do
      @deck.cards.to_set.must_equal @correct_cards.to_set
    end
  end
  
  describe "when a deck is shuffled" do
    it "wont be in the same order" do
      @deck.shuffle
      @deck.cards.wont_equal @unshuffled_cards
    end
  end
  
  describe "when a deck is cut" do
    it "must have 52 cards" do
      @deck.shuffle
      @deck.cut
      @deck.cards.count.must_equal 52
    end
    
    it "must have the correct cards" do
      @deck.shuffle
      @deck.cut
      @deck.cards.to_set.must_equal @correct_cards.to_set
    end
    
    it "cards will rotate by ???" do #TODO: this is fail
      @shuffled
      @deck.cut
      @deck.cards.wont_equal @unshuffled_cards
    end
  end
  
  describe "when a card is compared" do
    it "will win!" do
      true
    end
  end
end