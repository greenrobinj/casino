# wheel has 36 number
#half red, half black and 2 green
#take bet
# pay the player

# class Roulette
   require_relative 'wallet'
   require 'colorize'
   require 'pry'
   
   
   #   def initialize (person)
   #      atter_acessor :person, :age, :money
          #@person = person
          #puts @person.name
          #puts @person.money

#     puts "========ROULETTE!!========".colorize(:cyan)
#     puts "Welcome my Child to the Roulette wheel".colorize(:cyan)
#     puts "You have $5 dallor chips.".colorize(:magenta)
#     puts "What number or color".colorize(:magenta)
#     puts "would you like to place your bet on?".colorize(:magenta)
#     puts "1) color?"
#     puts "2) number?"
#     bet = gets.strip.to_i
    
#     if bet = 2
#      bet == @num
#       spin
#     else
#         bet === @color
#         spin
#     end
#   end

  def spin
     spin = [*1..35].sample
     puts spin.colorize(:red)
   # puts spin = ["Red".colorize(:red),"Black".colorize(gray)].sample
  end

  # def num
  #   case
  #   when 
  #     @num == @ball
  #     puts "Winner Winner chiken dinner!!"
  #   when
  #     @num != @ball 
  #     puts "Victory has defeated you!"
  #    end
  #   end
 spin


  



# end

# Roulette.new
 