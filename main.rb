require_relative 'wallet'
# require_relative 'yahtzee'
require 'colorize'
require 'pry'
require_relative 'baccarat'
require_relative 'slots'

class Menu
  attr_accessor :person

  def initialize 
    puts "Welcome to the super fun casino!"
    puts "Enter your name"
    name = gets.strip
    puts "Enter your age"
    age = gets.strip.to_i
    if age >= 21
    else
      puts "You are too young. Try in a few years."
      exit
    end
    money = 500
    @person = Wallet.new(name, age, money)
    puts "Welcome #{@person.name}, you have $#{@person.money}"
    casino
  end
    
  def casino
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
      Slots.new(@person)
    when 2
      Baccarat.new(@person)
    when 3
      Yahtzee.new(@person)
    when 4
      Roulette.new(@person)
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

