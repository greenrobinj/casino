require_relative 'wallet'
require_relative 'yahtzee'
require_relative 'Roulette'
require 'colorize'
require 'pry'
require_relative 'baccarat'
require_relative 'slots'

class Menu
  attr_accessor :person

  def initialize 
    instructions
  end
  
  def instructions
    puts "\t. -------SUPER FUN CASINO-------".colorize(:cyan)
    puts "Welcome to the super fun casino!".colorize(:magenta)
    puts "Enter your name".colorize(:magenta)
    name = gets.strip
    puts "Enter your age".colorize(:magenta)
    age = gets.strip.to_i
    if age >= 21
    else
      puts "You are too young. Try in a few years.".colorize(:red)
      exit
    end
    money = 500
    @person = Wallet.new(name, age, money)
    puts "Welcome #{@person.name}, you have $#{@person.money}"
    casino
  end
    
  def casino
    # binding.pry
    puts "Which game do you want to play, #{@person.name}?".colorize(:magenta)
    puts "\t1. Slots"
    puts "\t2. Baccarat"
    puts "\t3. Yahtzee"
    puts "\t4. Roulette"
    puts "\t5. Check my wallet"
    puts "\t6. Exit"
    selection = gets.strip.to_i
    case selection
    when 1
      Slots.new(@person)
    when 2
      Baccarat.new(@person)
    when 3
      Yahtzee.new(@person, self) 
    when 4
      Roulette.new(@person)
    when 5
    puts "You have: $#{@person.money}"
    casino
    when 6
      puts "Thanks for playing! Goodbye"
      exit
    else
      puts "Invalid entry".colorize(:red)
      casino
    end
  end
end

Menu.new

