# wheel has 36 number
#half red, half black and 2 green
#take bet
# pay the player
require_relative 'wallet'
require 'colorize'
require 'pry'

class Roulette
   attr_accessor :name, :age, :money
   
   
   def initialize(person)
    # @person = person
     puts @person.name
  #  puts @person.money
   menu
 end
  
  def menu
    puts "========ROULETTE!!========".colorize(:cyan)
    puts "Welcome #{person.name}to the Roulette wheel".colorize(:cyan)
    puts "You have $10 chips for your bet, and #{person.money}".colorize(:magenta)
    puts "Where would you like to place your bet:".colorize(:magenta)
    puts "1) color?"
    puts "2) number?"
    start
  end
    # gets.strip.to_i
   def start
    if 
      gets.strip.to_i === 2
      intiger
    elsif
      gets.strip.to_i == 3
      colors
    else
      gets.strip.to_i == 1

    end
  end
    
  def intiger
     puts "what number would you like to place your bet on?"
     @num = gets.strip.to_i 
      spin_intiger
  end
       
  def colors
    puts "what color would you like to place your bet on"
    puts "red".colorize(:red) 
    puts "black".colorize(:gray)
    @color = gets.strip
    spin_color
  end

  def spin_intiger
    puts "Here is the spin.......".colorize(:cyan)
    puts "And it lands on ?".colorize(:cyan) 

    puts ["red","black"].sample
    puts @spin1 = [*1..35].sample
    proximo_num
  end

  def spin_color
    puts "Here is the spin.......".colorize(:cyan)
    puts "And it lands on ?".colorize(:cyan) 

    puts @spin2 = ["red","black"].sample
    puts [*1..35].sample
    proximo_color
  end

  def proximo_num
    if 
       @spin1 === @num  
        puts "YOU GET THE MONEYS!!  WINNER WINNER!".colorize(:green)
        @money = +10
        menu2
    else
        @spin1 != @num 
        puts " Better luck next time my Child".colorize(:red)
        @money = -10
        menu2
    end
  end
def proximo_color
    if
      @spin2 == @color
      puts " YOU GET THE MONEYS!!  WINNER WINNER!".colorize(:green)
      menu2
    else
      @spin2 != @color
      puts "Better luck next time my Child".colorize(:red) 
      menu2
    end
  end


def menu2
  puts "========ROULETTE!!========".colorize(:cyan)
  puts " Child you now have $_____ ".colorize(:cyan)
  puts "You have $10 chips for your bet.".colorize(:magenta)
  puts "Where would you like to place your next bet:".colorize(:magenta)
  puts "1) color?"
  puts "2) number?"
  puts "3) Exit"
  start
end

end

 Roulette.new
 