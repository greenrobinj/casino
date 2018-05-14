require_relative 'wallet'
require_relative 'main'
require 'colorize'
require 'pry'

 class Roulette
  attr_accessor :name, :age, :money
  
  
  def initialize(person)
    @person = person
     puts @person.name
     puts @person.money
     menu
 end
  
  def menu
    print `clear`
    puts "========ROULETTE!!========".colorize(:cyan)
    puts "Welcome to the Roulette wheel #{@person.name}".colorize(:cyan)
    puts "You have $10 chips for your bet, and have $#{@person.money}".colorize(:magenta)
    @bet = 10
    @person.money -= @bet
    puts "You have $#{@person.money} left."
    puts "where would you like to place your bet:".colorize(:magenta)
    puts "1) color?"
    puts "2) number?"
    start
  end
    #  gets.strip.to_i
  def start
    if
    gets.strip.to_i == 2
    intiger
    else
    gets.strip.to_i == 1
    colors
    end
  end


def intiger
  puts "what number would you like to place your bet on?".colorize(:yellow)
  puts "Pick a number between 1 and 35".colorize(:yellow)
     @num = gets.strip.to_i 
      spin_intiger
  end
       
  def colors
    puts "what color would you like to place your bet on".colorize(:yellow)
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
        @bet += 30
        puts @bet + @person.money = @person.money 
        sleep (5)
        menu2
    else
        @spin1 != @num 
        puts " Better luck next time my Child".colorize(:red)
       @bet -= 10
       puts @bet + @person.money = @person.money 
        sleep (5)
        menu2
    end
  end

def proximo_color
    if
      @spin2 == @color
      puts " YOU GET THE MONEYS!!  WINNER WINNER!".colorize(:green)
      @bet += 10
      puts @bet + @person.money = @person.money 
      sleep (5)
      menu2
    else
      @spin2 != @color
      puts "Better luck next time my Child".colorize(:red) 
      @bet -= 10
      puts @bet + @person.money = @person.money 
      sleep (5)
      menu2
    end
  end


def menu2
  print `clear`
  puts "========ROULETTE!!========".colorize(:cyan)
  puts " Child you now have $#{@person.money} ".colorize(:cyan)
  puts "You have $10 chips for your bet.".colorize(:magenta)
  #puts "Where would you like to place your next bet:".colorize(:magenta)
  #puts " or enter 3 if you would like to go back to the Casino.".colorize(:magenta)
  puts " Would you like to play again or go back to the Casino House?".colorize(:magenta)
  puts "1) play again?"
  puts "2) Back to Casinos main menu for more games?"
  choice = gets.strip.to_i
  
  if choice === 1
    menu
  else
    Menu.new
  end

 end
end
