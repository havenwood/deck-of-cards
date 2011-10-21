#!/usr/bin/env ruby
require 'rubygems'
gem 'minitest' # use minitest gem, not 1.9.x built-in version
require 'minitest/autorun'
require 'minitest/pride' # pretty colors
require './deck' # class being tested

class TestDeck < MiniTest::Unit::TestCase
  def setup
    @deck = Deck.new
  end
  
  def test_that_a_new_deck_can_be_made
    assert_instance_of Deck, @deck
  end
  
  def test_that_a_deck_can_be_shuffled
    assert_kind_of Array, @deck.shuffle
  end
  
  def test_that_cards_can_be_drawn_from_deck
    assert_kind_of Array, @deck.draw
    assert_equal @deck.draw(3).size, 3 
  end
end