require_relative 'wallet'
require_relative 'dice'
require 'pry'
require 'colorize'

class Yahtzee
attr_accessor :name, :age, :money
attr_accessor :roll, :singleroll

  def initialize(person)
    @person = person
    @total_log = []
    game
  end 

  def game
    print `clear`
    puts "Hit 1 to roll".colorize(:yellow)
    puts "Any other key will ESC"
    input = gets.strip.to_i
    if input == 1
      @total_log = singleroll
      current_roll = Dice.new(singleroll)
      binding.pry
      @total_log << current_roll
      # binding.pry
      select_dice
    else
      exit
    end
  end

# def to_i
  #   @hand1.map {|i| i.to_s}.select {|s| s =~ /^[0-9]+$/}.map {|i| i.to_i}
  #   puts @hand1
  #   select_dice
  # end

  # def keep_score
  #   puts "Your score card is:"
  #   # puts "\t1) Ones: #{@one_sum}"
  #   #two  = sum
  #   #three = sum
  #   #four = sum
  #   #five = sum
  #   #six = sum

  #   #bonus - if over 63 add 35

  #   #three of a kind - add total
  #   #four of a kind - add total
  #   #full house - score of 25
  #   #Small straight: 4 dice - 30 pts
  #   #large straight: 5 dice - 40 pts
  #   #yahtzee (bonus yahtzee) - 100 pts
# end

  def select_dice
    puts "What would you like to fill?"
    selection = gets.strip.to_i
    case selection 
    when 1
      ones
    else
      game
    end
  end

  def ones
    #i need to define @one_sum
    #if the value == 1, then sum if not, then ignore
    binding.pry
    @total_log.each do |num|
      (num == 1 ? num + 1 : false )
    end
  end
end

