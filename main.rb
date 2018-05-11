
require_relative 'wallet'
require 'colorize'
require 'pry'


  def menu
    puts "Welcome to the super fun casino!"
    puts "Tell us your name"
    name = gets.strip
    puts "Welcome #{name}! How old are you?"
    age = gets.strip.to_i
      if age >= 21
      else
      print `say Get out of here, you're too young!`
      exit
      end
    puts "How much do you want to play with?"
    wallet = gets.strip.to_i
    if wallet >= 100
      Wallet.new(wallet)
    else
      print `say Sorry you are too poor to play, get out.`
      exit
    end
    casino
def menu
  puts "Welcome to the super fun casino!"
  puts "Tell us your name"
  name = gets.strip
  puts "Welcome #{name}! How old are you?"
  age = gets.strip.to_i
  if age >= 21
  else
  print `say "Get out of here, you're too young!"`
  exit
  end
  puts "How much do you want to play with?"
  wallet = gets.strip.to_i
  if wallet >= 100
    Wallet.new(wallet)
    @money = wallet

  else
    print `say "Sorry you are too poor to play, get out."`
    exit
  end

  def casino
    puts "Which game do you want to play?"
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
    Baccarat.new
  when 3
    Yahtzee.new
  when 4
    Roulette.new
  when 5
   #check wallet
  when 6
    puts "Thanks for playing! Goodbye"
    exit
  else
    puts "Invalid entry"
    casino
    end

# def wallet
#
# end


def casino
  puts "Which game do you want to play?"
  puts "1. Slots"
  puts "2. Baccarat"
  puts "3. Yahtzee"
  puts "4. Roulette"
  puts "5. Add to wallet"
  puts "6. Exit"
  selection = gets.strip.to_i
case selection
when 1
  Slots.new
when 2
  Baccarat.new
when 3
  Yahtzee.new
when 4
  Roulette.new
when 5
  binding.pry
  Wallet.new
when 6
  puts "Thanks for playing! Goodbye"
  exit
else
  puts "Invalid entry"
  casino
  end

menu