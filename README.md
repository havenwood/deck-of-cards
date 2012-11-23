# Deck of Cards
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

deck.split
# => => [#<7 of Hearts>,
# #<4 of Diamonds>,
# #<King of Diamonds>,
# #<4 of Clubs>,
# #<6 of Clubs>,

my_card = deck.draw
# => #<7 of Hearts>

your_card = deck.draw
# => #<#<King of Diamonds>
	
my_card > your_card
# => false

my_card <= your_card
# => true
```

## MIT License

Copyright (c) 2012 Shannon Skipper

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.