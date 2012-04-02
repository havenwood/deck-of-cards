#!/usr/bin/env ruby

begin
  require 'minitest/autorun'
rescue LoadError
  require 'rubygems'
  require 'minitest/autorun'
ensure
  require 'minitest/pride'
  require './deck'
end

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