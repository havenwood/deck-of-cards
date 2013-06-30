# Deck of Cards
[![Build Status](https://secure.travis-ci.org/Havenwood/deck-of-cards.png?branch=master)](http://travis-ci.org/havenwood/deck-of-cards)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/Havenwood/deck-of-cards)

## Installation

`gem install deck-of-cards`

## Usage

```ruby
require 'deck-of-cards'

deck = DeckOfCards.new
# => #<Deck:0x007fa6d4187e78
# @cards=
#  [#<2 of Hearts>,
#   #<3 of Hearts>,
#   #<4 of Hearts>,
#   #<5 of Hearts>,
#   '...']>

deck.shuffle
# => [#<Ace of Clubs>,
# #<9 of Spades>,
# #<10 of Spades>,
# #<Queen of Clubs>,
# #...,

deck.split
# => [#<7 of Hearts>,
# #<4 of Diamonds>,
# #<King of Diamonds>,
# #<4 of Clubs>,
# #...,

my_card = deck.draw
# => #<7 of Hearts>

your_card = deck.draw
# => #<King of Diamonds>
	
my_card > your_card
# => false

my_card <= your_card
# => true

my_card == your_card
# => false
```
