#GAME OBJECTIVE: The “player” and the “banker” each receive two cards 
#with the object being to get a point total closest to 9.

#PLAYERS HAND:
# 8 OR 9 IS AN AUTO WIN AGAINST DEALER
#If the Player's first two cards are 6, 7, 8 or nine, they stand. 
#If the Player's first two cards total five or less they hit and receive a single card.

#Do you want to bet on the banker winning, yourself(player), or bet on a tie??
#when the card totals > 9 you drop the 1st number so 19 would be 9 and 15 be 5

require 'pry'

require_relative 'wallet'


#make a class of card deck
# class Cards
# attr_accessor :number :suit :color
#   def initialize
#     number = 
#     suit =
#   end

def initialize(person)
  @person = person
  card_value = %(A 2 3 4 5 6 7 8 9 J Q K)
  suit = %(Spades, Hearts, Clubs Diamonds)
  cards = []
  deck
end


#REQUIRED
class Baccarat
  attr_accessor :name, :age, :money


def initialize(person)
  @person = person
  welcome
end 

@person.name
@person.money -20



  def welcome
    puts "Great choice, let's play! The rules are simple. \nThe banker and the player each get two cards and the closest to 9 wins! \nAny total value over 9 will drop 10 from that value. \nFace cards and tens have no value."
    puts "1. Bet on the dealer?"
    puts "2. Bet on the player?"
    puts "3. Bet on a tie?"
    selection = gets.strip.to_i
  end
end
 welcome 
# end
# def player_info
#   @player.name
#   @player.money
#   @player.age
# end 

# #what do I want to do? Bet on dealer, make sure the deck is randomized, & make
# #sure that 2 cards are drawn
# def bet_on_dealer
#   puts ""
# end
# #---------------------------------------------------------------------------------

# #What do I want to do? Bet on the player, make sure deck is randomized, & make
# #sure that 2 cards are drawn.
# def bet_on_player
# end
# #----------------------------------------------------------------------------------

# #What do I want to do? Bet on the player, make sure deck is randomized, & make
# #sure that 2 cards are drawn.
# def bet_on_tie
# end
