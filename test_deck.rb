#!/usr/bin/env ruby

require 'minitest/autorun'
require 'minitest/pride'
require 'set'
require './deck'

describe Deck do
  before do
    @deck = Deck.new
    @correct_cards = []
    suits = ["Hearts", "Spades", "Diamonds", "Clubs"]
    ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
    suits.each { |suit| ranks.each { |rank| @correct_cards << "#{rank} of #{suit}" } }
  end
  
  describe "when a deck is created" do
    it "must pass sanity check" do
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
    before do
      @deck.shuffle
    end
    
    it "must be the same cards" do
      @deck.cards.to_set.must_equal @correct_cards.to_set
    end
    
    it "wont be in the same order" do
      @deck.cards.wont_equal @correct_cards
    end
  end
  
  describe "when a deck is cut" do
    before do
      @deck.cut
    end
    
    it "must be the same cards" do
      @deck.cards.to_set.must_equal @correct_cards.to_set
    end
    
    it "must be cut in half" do
      @deck.cards.first.must_equal @correct_cards[26]
      @deck.cards.last.must_equal @correct_cards[25]
    end
  end
  
  describe "when a card is drawn" do
    before do
      @card = @deck.draw.first
    end
    
    it "must be a real card" do
      @correct_cards.must_include @card
    end
  end
  
  describe "when five cards are drawn" do
    before do
      @cards = @deck.draw 5
    end
    
    it "must be the expected number of cards" do
      @cards.count.must_equal 5
    end
    
    it "must be real cards" do
      assert @cards.each.all? { |card| @correct_cards.include? card }
    end
  end
end