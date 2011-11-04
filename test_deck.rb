#!/usr/bin/env ruby
require 'rubygems'
gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './deck'

describe Deck do
  before do
    @deck = Deck.new
  end
  
  describe "when a deck is created" do
    it "must exist" do
      @deck.must_be_instance_of Deck
    end
  end
end