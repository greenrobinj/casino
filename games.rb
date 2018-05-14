require_relative 'main'
require_relative 'wallet'
require_relative 'slots'
require_relative 'main'

class Casino
  attr_accessor :name, :age, :money

def initialize(person)
    @person = person
    puts @person.name
    puts @person.money
    games
end

  def games
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
      Slots.new(person)
    when 2
      Baccarat.new(person)
    when 3
      Yahtzee.new(person)
    when 4
      Roulette.new(person)
    when 5
    puts "You have: $#{@person.money}"
    when 6
      puts "Thanks for playing! Goodbye"
      exit
    else
      puts "Invalid entry"
      games
    end
  end
end

Casino.self.new