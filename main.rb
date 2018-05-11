require_relative 'wallet'
require_relative 'yahtzee'
require 'colorize'
require 'pry'

class Menu
  attr_accessor :person

  def initialize 
    instructions
  end
  
  def instructions
    puts "Welcome to the super fun casino!"
    puts "Enter your name"
    name = gets.strip
    puts "Enter your age"
    age = gets.strip.to_i
    money = 500
    # binding.pry
    @person = Wallet.new(name, age, money)
    puts "Welcome #{@person.name}, you have $#{@person.money}"
    casino
  end
    
  def casino
    # binding.pry
    puts "Which game do you want to play, #{@person.name}?"
    puts "\t1. Slots"
    puts "\t2. Baccarat"
    puts "\t3. Yahtzee"
    puts "\t4. Roulette"
    puts "\t5. Check my wallet"
    puts "\t6. Exit"
    selection = gets.strip.to_i
    case selection
    when 1
      Slots.new
    when 2
      Baccarat.new(person)
    when 3
      Yahtzee.new(person)
    when 4
      Roulette.new
    when 5
    puts "You have: $#{@person.money}"
    when 6
      puts "Thanks for playing! Goodbye"
      exit
    else
      puts "Invalid entry"
      casino
    end
  end
end

Menu.new

# def initialize 
  # @player = Wallet.new(500)
  # wallet = @player.money
  # instructions(wallet)
# end