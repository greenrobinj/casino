require 'pry'
require_relative 'wallet'
require 'colorize'
#REQUIRED
class Baccarat
attr_accessor :person
def initialize(person)
  @person = person
  # binding.pry
  welcome
  end
end

# @person.name
# @person.money -20
#---------------------------------------------------------------------------------
class Cards
  attr_accessor
    def initialize
    # @person = person
    @card_value = %(A 2 3 4 5 6 7 8 9 J Q K).sample
    @suit = %(Spades, Hearts, Clubs Diamonds).sample
    @cards = []
    end
  end
  #---------------------------------------------------------------------------------
  def welcome_menu
    puts "Let's play! The rules are simple. \nThe banker and the player each get two cards and the closest to 9 wins! \nAny total value over 9 will drop 10 from that value. \nFace cards and tens have no value."
    puts "1. Bet on the dealer?"
    puts "2. Bet on the player?"
    puts "3. Bet on a tie?"
    puts "4. Exit"
    selection = gets.strip.to_i
  end
  
  
  def player_info
    @player.name
    @player.money
    @player.age
  end 
  #---------------------------------------------------------------------------------
  def bet_on_dealer
    puts "Okay #{@player.name} you chose to bet on the dealer"
    first_hand = @card_value, @suit
    second_hand = @card_value, @suit
    puts "The first hand(dealer) is a #{first_hand} and a #{first_hand}"
    puts "The second hand(player) is a #{second_hand} and a #{second_hand}"
  # if first_hand > 9 
  #I WANT TO SAY: IF FIRST HAND IS CLOSER TO 9 THAN THE 
  #SECOND HAND THEN THE DEALER WINS
  #ELSE THE DEALER LOSES AND THE PLAYER WINS
    # puts ""
  end
  # #---------------------------------------------------------------------------------
  def bet_on_player
    puts "Okay, you chose to bet on yourself"
    first_hand = @card_value, @suit
    second_hand = @card_value, @suit
    puts "The first hand is a #{first_hand} and a #{first_hand}"
    puts "The second hand is a #{second_hand} and a #{second_hand}"
  end
  # # #----------------------------------------------------------------------------------
  def bet_on_tie
    puts "Okay you chose to bet on a tie"
    first_hand = @card_value, @suit
    second_hand = @card_value, @suit
    puts "The first hand is a #{first_hand} and a #{first_hand}"
    puts "The second hand is a #{second_hand} and a #{second_hand}"
  end
  
  
  case welcome_menu
  when 1
    bet_on_dealer
  when 2
    bet_on_player
  when 3
    bet_on_tie
  when 4
    puts "Thanks for playing, bye!"
    # Menu.new
  end
  welcome_menu